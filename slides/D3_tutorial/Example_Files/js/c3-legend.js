// Generated by CoffeeScript 1.12.7
(function() {
    var bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
      extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
      hasProp = {}.hasOwnProperty;
  
    c3.Legend = (function(superClass) {
      extend(Legend, superClass);
  
      function Legend() {
        this._style = bind(this._style, this);
        this._update = bind(this._update, this);
        this._init = bind(this._init, this);
        return Legend.__super__.constructor.apply(this, arguments);
      }
  
      Legend.version = 0.2;
  
      Legend.prototype.type = 'legend';
  
      Legend.prototype.data = [];
  
      Legend.prototype.key = void 0;
  
      Legend.prototype.filter = void 0;
  
      Legend.prototype.nest = void 0;
  
      Legend.prototype.nest_key = void 0;
  
      Legend.prototype.hoverable = true;
  
      Legend.prototype.list_options = void 0;
  
      Legend.prototype.list_item_options = void 0;
  
      Legend.prototype.item_options = void 0;
  
      Legend.prototype.item_option = void 0;
  
      Legend.prototype.nested_list_item_options = void 0;
  
      Legend.prototype.nested_item_options = void 0;
  
      Legend.prototype.bullet_options = void 0;
  
      Legend.prototype.nested_bullet_options = void 0;
  
      Legend.prototype._init = function() {
        var base, base1;
        if (this.nest == null) {
          this.nest = function(d) {
            if (Array.isArray(d)) {
              return d;
            } else {
              return [];
            }
          };
        }
        if (this.item_options == null) {
          this.item_options = {};
        }
        if (this.item_option == null) {
          if ((base = this.item_options).text == null) {
            base.text = function(d) {
              if (Array.isArray(d)) {
                return d.length + " items";
              } else {
                return d;
              }
            };
          }
          if (this.filter == null) {
            this.filter = (function(_this) {
              return function(d) {
                var base1, base2, ref, ref1, ref2;
                return (ref = (ref1 = (ref2 = typeof (base1 = _this.item_options).html === "function" ? base1.html(d) : void 0) != null ? ref2 : _this.item_options.html) != null ? ref1 : typeof (base2 = _this.item_options).text === "function" ? base2.text(d) : void 0) != null ? ref : _this.item_options.text;
              };
            })(this);
          }
        }
        if (this.nested_list_item_options == null) {
          this.nested_list_item_options = this.list_item_options;
        }
        if (this.nested_item_options == null) {
          this.nested_item_options = this.item_options;
        }
        if (this.bullet_options == null) {
          this.bullet_options = {};
        }
        if ((base1 = this.bullet_options).text == null) {
          base1.text = "•";
        }
        if (this.nested_bullet_options == null) {
          this.nested_bullet_options = this.bullet_options;
        }
        return this.list = c3.select(d3.select(this.anchor), 'ul').singleton();
      };
  
      Legend.prototype._update = function() {
        var datum, i;
        this.current_data = this.filter ? (function() {
          var j, len, ref, results;
          ref = this.data;
          results = [];
          for (i = j = 0, len = ref.length; j < len; i = ++j) {
            datum = ref[i];
            if (this.filter(datum, i)) {
              results.push(datum);
            }
          }
          return results;
        }).call(this) : this.data;
        this.list.options(this.list_options).update();
        this.list_items = this.list.select('ul:not(.child) > li').bind(this.current_data, this.key);
        this.list_items.options(this.list_item_options).update();
        this.items = this.list_items.inherit('span.content').options(this.item_options, this.item_option).update();
        if (this.bullet_options) {
          this.bullets = this.list_items.inherit('ul:not(.child) > li > span.bullet', true, true);
          this.bullets.options(this.bullet_options).update();
        }
        if (this.nest) {
          this.nested_items = this.list_items.inherit('ul.child').select('li').bind(this.nest, this.nest_key);
          this.nested_items.options(this.nested_list_item_options).update();
          this.nested_items.inherit('span.content').options(this.nested_item_options).update();
          if (this.nested_bullet_options) {
            this.nested_bullets = this.nested_items.inherit('span.bullet', true, true);
            this.nested_bullets.options(this.nested_bullet_options).update();
          }
        }
        return this.list_items.select('ul > li').all.each(function() {
          return d3.select(this).node().parentNode.parentNode.classList.add('parent');
        });
      };
  
      Legend.prototype._style = function(style_new) {
        var ref, ref1, ref2;
        this.list.style().all.classed({
          'c3': true,
          'legend': true,
          'hoverable': this.hoverable
        });
        this.list_items.style(style_new);
        this.items.style(style_new);
        if ((ref = this.nested_items) != null) {
          ref.style(style_new);
        }
        if ((ref1 = this.bullets) != null) {
          ref1.style(style_new);
        }
        return (ref2 = this.nested_bullets) != null ? ref2.style(style_new) : void 0;
      };
  
      return Legend;
  
    })(c3.Base);
  
    c3.Legend.PlotLegend = (function(superClass) {
      extend(PlotLegend, superClass);
  
      function PlotLegend() {
        this._style = bind(this._style, this);
        this._update = bind(this._update, this);
        this._init = bind(this._init, this);
        return PlotLegend.__super__.constructor.apply(this, arguments);
      }
  
      PlotLegend.version = 0.1;
  
      PlotLegend.prototype.type = 'plot_legend';
  
      PlotLegend.prototype.plot = void 0;
  
      PlotLegend.prototype.invert_layers = false;
  
      PlotLegend.prototype.html_names = false;
  
      PlotLegend.prototype.hover_fade = 0.2;
  
      PlotLegend.prototype.duration = 750;
  
      PlotLegend.prototype._init = function() {
        var base, base1, base10, base11, base2, base3, base4, base5, base6, base7, base8, base9, layer_name, layer_title, stack_name, stack_title;
        if (this.plot == null) {
          throw Error("Plot legend must have a plot option refering to a c3.Plot.");
        }
        if (!(this.plot instanceof c3.Plot)) {
          throw Error("Plot option must reference a c3.Plot type object.");
        }
        if (!this.plot.rendered) {
          throw Error("plot_legend's linked plot should be rendered before rendering the legend.");
        }
        if (this.key == null) {
          this.key = function(layer) {
            return layer.uid;
          };
        }
        if (this.nest == null) {
          this.nest = function(layer) {
            var ref;
            return (ref = layer.stacks) != null ? ref : [];
          };
        }
        if (this.list_item_options == null) {
          this.list_item_options = {};
        }
        if (this.item_options == null) {
          this.item_options = {};
        }
        if (this.nested_list_item_options == null) {
          this.nested_list_item_options = {};
        }
        if (this.nested_item_options == null) {
          this.nested_item_options = {};
        }
        if (this.nest_key == null) {
          this.nest_key = function(stack) {
            var ref;
            return (ref = stack.key) != null ? ref : stack.name;
          };
        }
        layer_title = (function(_this) {
          return function(layer, i) {
            var ref, ref1, ref2, ref3, ref4, ref5;
            return (ref = (ref1 = (ref2 = (ref3 = layer.options) != null ? ref3.title : void 0) != null ? ref2 : (ref4 = _this.plot.layer_options) != null ? typeof ref4.title === "function" ? ref4.title(layer, i) : void 0 : void 0) != null ? ref1 : (ref5 = _this.plot.layer_options) != null ? ref5.title : void 0) != null ? ref : layer.name;
          };
        })(this);
        layer_name = function(layer, i) {
          var ref, ref1;
          return (ref = (ref1 = layer.name) != null ? ref1 : layer_title(layer, i)) != null ? ref : layer.type;
        };
        stack_title = (function(_this) {
          return function(stack, stack_idx, layer_idx) {
            var layer, ref, ref1, ref2, ref3, ref4, ref5;
            layer = _this.plot.layers[layer_idx];
            return (ref = (ref1 = (ref2 = (ref3 = stack.options) != null ? ref3.title : void 0) != null ? ref2 : layer != null ? (ref4 = layer.stack_options) != null ? typeof ref4.title === "function" ? ref4.title(stack) : void 0 : void 0 : void 0) != null ? ref1 : layer != null ? (ref5 = layer.stack_options) != null ? ref5.title : void 0 : void 0) != null ? ref : stack.name;
          };
        })(this);
        stack_name = function(stack, stack_idx, layer_idx) {
          var ref, ref1;
          return (ref = (ref1 = stack.name) != null ? ref1 : stack_title(stack, stack_idx, layer_idx)) != null ? ref : "stack";
        };
        if (this.html_names) {
          if ((base = this.item_options).html == null) {
            base.html = layer_name;
          }
          if ((base1 = this.nested_item_options).html == null) {
            base1.html = stack_name;
          }
        } else {
          if ((base2 = this.item_options).text == null) {
            base2.text = layer_name;
          }
          if ((base3 = this.nested_item_options).text == null) {
            base3.text = stack_name;
          }
        }
        if ((base4 = this.item_options).title == null) {
          base4.title = layer_title;
        }
        if ((base5 = this.nested_item_options).title == null) {
          base5.title = stack_title;
        }
        if (this.hoverable) {
          if ((base6 = this.list_item_options).events == null) {
            base6.events = {};
          }
          if ((base7 = this.list_item_options.events).mouseenter == null) {
            base7.mouseenter = (function(_this) {
              return function(hover_layer, hover_layer_idx) {
                var fade;
                fade = _this.hover_fade;
                _this.plot.layers_selection.all.style('opacity', function(layer, i) {
                  var old_opacity, ref;
                  old_opacity = (ref = d3.select(this).style('opacity')) != null ? ref : 1;
                  if (layer !== hover_layer) {
                    return fade * old_opacity;
                  } else {
                    return old_opacity;
                  }
                });
                return _this.trigger('layer_mouseenter', hover_layer, hover_layer_idx);
              };
            })(this);
          }
          if ((base8 = this.list_item_options.events).mouseleave == null) {
            base8.mouseleave = (function(_this) {
              return function(hover_layer, hover_layer_idx) {
                _this.plot.layers_selection.all.style('opacity', function(layer, i) {
                  var ref, ref1, ref2, ref3, ref4, ref5, ref6, ref7, ref8, ref9;
                  return (ref = (ref1 = (ref2 = (ref3 = (ref4 = layer.options) != null ? (ref5 = ref4.styles) != null ? typeof ref5.opacity === "function" ? ref5.opacity(layer, i) : void 0 : void 0 : void 0) != null ? ref3 : (ref6 = layer.options) != null ? (ref7 = ref6.styles) != null ? ref7.opacity : void 0 : void 0) != null ? ref2 : (ref8 = layer.styles) != null ? typeof ref8.opacity === "function" ? ref8.opacity(layer, i) : void 0 : void 0) != null ? ref1 : (ref9 = layer.styles) != null ? ref9.opacity : void 0) != null ? ref : 1;
                });
                return _this.trigger('layer_mouseleave', hover_layer, hover_layer_idx);
              };
            })(this);
          }
          if ((base9 = this.nested_list_item_options).events == null) {
            base9.events = {};
          }
          if ((base10 = this.nested_list_item_options.events).mouseenter == null) {
            base10.mouseenter = (function(_this) {
              return function(hover_stack, hover_stack_idx, hover_layer_idx) {
                var cache, duration, fade, layer, ref, ref1, ref2;
                layer = _this.plot.layers[hover_layer_idx];
                fade = _this.hover_fade;
                layer.groups.all.style('opacity', function(stack, i) {
                  var old_opacity, ref;
                  old_opacity = (ref = d3.select(this).style('opacity')) != null ? ref : 1;
                  if (stack !== hover_stack) {
                    return fade * old_opacity;
                  } else {
                    return old_opacity;
                  }
                });
                duration = _this.duration;
                if ((ref = layer.rects) != null) {
                  ref.all.filter(function(d, i, stack_idx) {
                    return stack_idx === hover_stack_idx;
                  }).transition().duration(duration).attr('transform', function() {
                    var rect;
                    rect = d3.select(this);
                    return "translate(0," + (layer.v.range()[0] - rect.attr('y') - rect.attr('height')) + ")";
                  });
                }
                if (layer.path_generator != null) {
                  _this.layer_paths_cached = cache = [];
                  if ((ref1 = layer.paths) != null) {
                    ref1.all.each(function(path, path_idx) {
                      return cache[path_idx] = d3.select(this).attr('d');
                    });
                  }
                  if ((ref2 = layer.paths) != null) {
                    ref2.all.filter(function(stack, stack_idx) {
                      return stack_idx === hover_stack_idx;
                    }).transition().duration(duration).attr('d', function(stack, stack_idx) {
                      layer.path_generator.x(function(d, i) {
                        var ref3;
                        return ((ref3 = layer.chart.orig_h) != null ? ref3 : layer.h)(stack.values[i].x);
                      }).y(function(d, i) {
                        return layer.v(stack.values[i].y);
                      }).y0(layer.v.range()[0]);
                      return layer.path_generator(stack.current_data);
                    });
                  }
                }
                return _this.trigger('stack_mouseenter', hover_stack, hover_stack_idx, hover_layer_idx);
              };
            })(this);
          }
          if ((base11 = this.nested_list_item_options.events).mouseleave == null) {
            base11.mouseleave = (function(_this) {
              return function(hover_stack, hover_stack_idx, hover_layer_idx) {
                var layer, ref, ref1, ref2;
                layer = _this.plot.layers[hover_layer_idx];
                layer.groups.all.style('opacity', function(stack, i) {
                  var ref, ref1, ref2, ref3, ref4, ref5;
                  return (ref = (ref1 = (ref2 = layer.stack_options) != null ? (ref3 = ref2.styles) != null ? typeof ref3.opacity === "function" ? ref3.opacity(stack, i) : void 0 : void 0 : void 0) != null ? ref1 : (ref4 = layer.stack_options) != null ? (ref5 = ref4.styles) != null ? ref5.opacity : void 0 : void 0) != null ? ref : 1;
                });
                if ((ref = layer.rects) != null) {
                  ref.all.transition().duration(_this.duration).attr('transform', '');
                }
                if ((ref1 = layer.paths) != null) {
                  ref1.all.interrupt();
                }
                if (layer.paths != null) {
                  if (_this.layer_paths_cached != null) {
                    if ((ref2 = layer.paths) != null) {
                      ref2.all.filter(function(stack, stack_idx) {
                        return stack_idx === hover_stack_idx;
                      }).attr('d', _this.layer_paths_cached[hover_stack_idx]);
                    }
                  } else {
                    layer.draw();
                  }
                }
                return _this.trigger('stack_mouseleave', hover_stack, hover_stack_idx, hover_layer_idx);
              };
            })(this);
          }
        }
        PlotLegend.__super__._init.apply(this, arguments);
        this.list.all.classed('plot_legend', true);
        return this.plot.on('restyle.legend', this.restyle);
      };
  
      PlotLegend.prototype._update = function() {
        var generate_glyph, plot, size;
        delete this.layer_paths_caches;
        delete this.bullet_options.text;
        delete this.bullet_options.html;
        this.data = this.plot.layers;
        PlotLegend.__super__._update.apply(this, arguments);
        if (this.invert_layers) {
          this.list_items.all.order();
        } else {
          this.list_items.all.sort((function(_this) {
            return function(a, b) {
              return _this.plot.layers.indexOf(a) < _this.plot.layers.indexOf(b);
            };
          })(this));
        }
        size = 16;
        generate_glyph = function(svg, layer, stack_idx) {
          var node, ref, ref1, ref2, ref3, ref4, ref5;
          if (stack_idx == null) {
            stack_idx = 0;
          }
          if (layer instanceof c3.Layer.Line) {
            node = layer.paths.all[0][stack_idx];
            return svg.select('line').singleton(node).position({
              x1: 0,
              y1: size / 2,
              x2: size,
              y2: size / 2
            });
          } else if (layer instanceof c3.Layer.Line.Horizontal) {
            node = layer.lines.all.node();
            return svg.select('line').singleton(node).position({
              x1: 0,
              y1: size / 2,
              x2: size,
              y2: size / 2
            });
          } else if (layer instanceof c3.Layer.Line.Vertical) {
            node = layer.lines.all.node();
            return svg.select('line').singleton(node).position({
              x1: size / 2,
              y1: 0,
              x2: size / 2,
              y2: size
            });
          } else if (layer instanceof c3.Layer.Scatter) {
            node = layer.circles.all.node();
            return svg.select('circle').singleton(node).position({
              cx: size / 2,
              cy: size / 2,
              r: size / 4
            });
          } else {
            node = (ref = (ref1 = (ref2 = (ref3 = layer.paths) != null ? ref3.all[0][stack_idx] : void 0) != null ? ref2 : (ref4 = layer.rects) != null ? ref4.all[stack_idx][0] : void 0) != null ? ref1 : (ref5 = layer.groups) != null ? ref5.all.node() : void 0) != null ? ref : layer.g.node();
            return svg.select('rect').singleton(node).position({
              x: size * 0.1,
              y: size * 0.1,
              height: size * 0.8,
              width: size * 0.8,
              rx: size / 5,
              ry: size / 5
            });
          }
        };
        this.bullets_svg = this.bullets.inherit('svg');
        this.bullets_svg.all.attr({
          height: size,
          width: size
        });
        this.bullets_svg.all.each(function(layer) {
          if (layer.stacks == null) {
            return generate_glyph(c3.select(d3.select(this)), layer);
          } else {
            return d3.select(this.parentNode).remove();
          }
        });
        this.nested_bullets_svg = this.nested_bullets.inherit('svg');
        this.nested_bullets_svg.all.attr({
          height: size,
          width: size
        });
        plot = this.plot;
        return this.nested_bullets_svg.all.each(function(stack, stack_idx, layer_idx) {
          var layer;
          layer = plot.layers[layer_idx];
          return generate_glyph(c3.select(d3.select(this)), layer, stack_idx);
        });
      };
  
      PlotLegend.prototype._style = function() {
        PlotLegend.__super__._style.apply(this, arguments);
        return this.list.all.selectAll('li > .bullet > svg > *').each(function(node) {
          var glyph, j, len, ref, results, src_styles, style;
          if (node) {
            glyph = d3.select(this);
            src_styles = getComputedStyle(node);
            ref = ['stroke', 'stroke-dasharray', 'stroke-width', 'fill', 'opacity'];
            results = [];
            for (j = 0, len = ref.length; j < len; j++) {
              style = ref[j];
              results.push(glyph.style(style, src_styles.getPropertyValue(style)));
            }
            return results;
          }
        });
      };
  
      return PlotLegend;
  
    })(c3.Legend);
  
  }).call(this);
  
  //# sourceMappingURL=c3-legend.js.map
  