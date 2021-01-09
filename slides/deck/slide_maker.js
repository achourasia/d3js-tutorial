(function() {

    "use strict"

    var slide = {};
    window.slide = slide;

    slide.code = function(title, init, code) {
        var out, codeText;

        function myInit() {
            d3.selectAll('div.output').classed('output', false)
            out
                .classed('output', true)
                .selectAll('*').remove();
            var frame = out[0][0].contentWindow.document;
            frame.open();
            frame.close();
            if (typeof init === 'function') init();
        }

        var section = d3.select('body')
            .append('section')
            .data([myInit])
            .attr('class', "code_slide")
        
        section.append('a')
        .text('Index')
        .attr('href', '/slides/#2')

        section.append('h1')
            .text(title)

        var codes = section.append('div')
            .attr('class', 'codes')

        function myConsoleLog() {
            var str = Array.prototype.slice.call(arguments).join(' ') + '\n';
            var pre = out.select('pre.log');
            if (pre.empty()) {
                out.append('pre')
                    .attr('class', 'log')
                    .text(str)
            } else {
                pre.text(pre.text() + str);
            }
        }

        function run() {
            // var code = codeText.property('value');
            // code = '(function(console) { "use strict"\n' + code + '\n})({ log: myConsoleLog })';
            // out.select('div.error').remove();
            // out.select('pre.log').remove();
            // try {
            //   eval(code);
            // } catch(err) {
            //   out.append('div')
            //     .attr('class', 'error')
            //     .text('Error: ' + err.message)
            // }
            // console.log('hi');
            global = out;
            var frame = out[0][0].contentWindow.document;
            frame.open();
            frame.write(codeText[0][0].value);
            frame.close();

            // console
        }

        codeText = codes.append('textarea')
            .attr('class', 'code')
            .attr('placeholder', 'JavaScript goes in here...')
            .property('value', code)
            .on('keydown', function() {
                // Run if command + enter
                if (d3.event.keyCode === 13 && d3.event.metaKey) run();
                d3.event.stopPropagation();
            })

        var buttonBar = codes.append('div')
            .attr('class', 'button_bar')

        buttonBar.append('div')
            .attr('class', 'run btn')
            .text('Run')
            .on('click', run)

        buttonBar.append('div')
            .attr('class', 'reset btn')
            .text('Reset')
            .on('click', myInit)
        var div = section.append('div')
          .attr("class", "out")
        out = div.append('iframe')
            .attr("frameborder", "0")
            .attr("width", "100%")
            .attr("height", "100%")
    }

    slide.code_title = function(title) {
        const t = d3.select('body')
            .append('section')
            .attr('class', "code_title");

        t.append('a')
          .text('Index').attr('href', '/slides/#2').attr('class', 'index_link');

        t.append('h1')
            .html(title);
    }

    slide.title = function(title) {
        const t = d3.select('body')
            .append('section')
            .attr('class', "title");

        t.append('a')
          .text('Index').attr('href', '/slides/#2').attr('class', 'index_link');

        t.append('h1')
            .html(title);
    }
})();
