const { environment } = require('@rails/webpacker');
const webpack = require ('webpack');

environment.plugins.append(
    'Provide',
    new webpack.ProvidePlugins({
        $: 'jquery/src/jqury',
        jQuery: 'jquery/src/jquery',
        Popper: ['popper.js', 'default']
    })
);

module.exports = environment;    
