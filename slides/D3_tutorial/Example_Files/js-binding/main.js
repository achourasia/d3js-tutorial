const run = () => {
  dataset = []

  const showPlot = () => {

    const margin = { top: 10, right: 30, bottom: 20, left: 50 };
    let width = 850;
    let height = 350;

    // Once the year change and run is called, remove all the plots
    // So that new plots can be rendered for the newly selected year
    d3.select("#output svg#sport").selectAll("*").remove()

    const svg = d3.select("#output svg#sport")
      .append("g")
      .attr("transform", `translate(${margin.left + "," + margin.top})`);

    // Group by year into a Map
    const groupByYear = [...d3.group(dataset, d => parseInt(d.Year)).entries()];

    // Unique list of countries
    let countries = new Set();
    let year = parseInt(document.getElementById("yearRange").value);

    if (year > 1992) {
      year -= 2;
    }

    const subset = groupByYear.find(elem => elem[0] == year) ? groupByYear.find(elem => elem[0] == year)[1] : [];

    subset.forEach(r => {
      countries.add(r.Country);
      r.Medals = parseInt(r.Medals);
    });

    countries = Array.from(countries);

    width = 1.5 * 25 * countries.length;

    // const maxHeight = Math.max(stackedData.slice(-1)[0][0][0], stackedData.slice(-1)[0][0][1]) * 15;

    d3.select("#output svg").attr("width", width + 150)


    const x = d3.scaleBand()
      .domain(countries)
      .range([0, width])
      .padding([0.2])

    const y = d3.scaleLinear()
      .domain([0, 100])
      .range([height, 0]);

    svg.selectAll("g")
      .data(subset)
      .enter()
      .append('rect')
      .attr('class', 'bar')
      .attr("x", d => x(d.Country))
      .attr("y", d => y(d.Medals))
      .attr("height", d => height - y(d.Medals))
      .attr("width", x.bandwidth())


    svg.append("g")
      .attr("transform", `translate(0, ${height})`)
      .call(d3.axisBottom(x).tickSizeOuter(0))
      .selectAll("text")  
      .style("text-anchor", "start")
      .attr("transform", "rotate(15)" );;

    svg.append("g")
      .call(d3.axisLeft(y));
  }

  d3.csv("country-medal.csv",
    (data) => {
      // Each row is an object with keys
      // Year,City,Sport,Discipline,Athlete,Country Code,Country,Gender,Event,Medal
      dataset.push(data);
    }
  ).then(() => {
    showPlot();
  });
};

run();