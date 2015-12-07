#!/usr/bin/env ruby
require 'webkit'
require 'net/http'
require 'yaml'

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

clipboard = Gtk::Clipboard.get(Gdk::Selection::CLIPBOARD)
@sw = Gtk::ScrolledWindow.new(nil, nil)
@wv = Gtk::WebKit::WebView.new
@wv.settings.enable_developer_extras=true
@wv.open ARGV.first
inspector = @wv.web_inspector
puts inspector.public_methods.sort
#inspector.signal_connect("inspect-web-view") do ,activate_inspector, splitter)
#cookiejar = libsoup.soup_cookie_jar_text_new('/path/to/your/cookies.txt',False)
#libsoup.soup_session_add_feature(session, cookiejar)
@sw.add inspector
@win = Gtk::Window.new
@win.add(@sw)

@win.show_all
Gtk.main
