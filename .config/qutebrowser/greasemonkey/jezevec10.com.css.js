// ==UserScript==
// @name    Userstyle (jezevec10.com.css)
// @include    https://*.jezevec10.com/*
// ==/UserScript==
GM_addStyle(`#app {
    background-image: linear-gradient( rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4) ), url('https://github.com/dxnst/nord-wallpapers/blob/master/image-go-nord/ign-0011.png?raw=true');
    background-size: 100% auto;
    background-repeat: no-repeat;
    background-origin: content-box;
    background-color: rgba(46, 52, 64);
    min-height: 100vh;
}

.navbar .navbar-default, .navbar-static-top, .dropdown-menu>.active>a, .dropdown-menu>.active>a:focus, .dropdown-menu>.active>a:hover {
    background-color: #5E81ACFA;
}

#chatBox .warnBox {
    background-color: #81a1c1;
    color: #fff;
}

#bgLayer {
    filter: opacity(30%) invert(15%) blur(0.7px) brightness(5);
    border-radius: 4px;
}

#lrem, #glstats {
    filter: brightness(2)
}

.statL, #sprintText{
    color: white;
}

body::-webkit-scrollbar {
    display:none;
}

.table-striped>tbody>tr:nth-child(odd)>td, .table-striped>tbody>tr:nth-child(odd)>th, .well, .btn{
    background-color: #FFFFFF25;
    border-color: transparent;
}

.nav .open>a, .nav .open>a:focus, .nav .open>a:hover, .nav-tabs>li>a:hover, .btn-default.active, .btn-default:active, .btn-default:focus, .btn-default:hover, .open>.btn-default.dropdown-toggle, .table-hover>tbody>tr:hover>td, .table-hover>tbody>tr:hover>th, .btn:hover {
    background-color: #FFFFFF15;
    border-color: transparent;

}

img[src*="https://jstris.jezevec10.com/res/play.png"] {
    filter: hue-rotate(100deg) brightness(1.7);
}

img[src*="https://jstris.jezevec10.com/res/play1v1-2.png"] {
    filter: hue-rotate(112deg) brightness(1.2);
}

.dropdown-menu {
    background-color: transparent;
    backdrop-filter: blur(20px) brightness(1.2);
    border-color: transparent;
}

.navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:focus, .navbar-default .navbar-nav>.active>a:hover, .navbar-default .navbar-nav>.open>a, .navbar-default .navbar-nav>.open>a:focus, .navbar-default .navbar-nav>.open>a:hover {
    background-color: #7198c8;
}

td, tr {
    color: #D8DEE9;
}

#app .btn-success {
    background-color: #5E81AC;
    border-color: #5E81AC;
}

.label-primary, #app .label-success {
    background-color: #5E81ACFA;   
}

.label-danger {
    background-color: #BF616A;
}

.navbar-default .navbar-nav>li>a:focus, .navbar-default .navbar-nav>li>a:hover  {
    color: #FFF;
    background-color: #7198c8; 
}

.pagination>.active>a, .pagination>.active>a:focus, .pagination>.active>a:hover, .pagination>.active>span, .pagination>.active>span:focus, .pagination>.active>span:hover, .pagination>li>a:focus, .pagination>li>a:hover, .pagination>li>span:focus, .pagination>li>span:hover, .pagination>.disabled>a, .pagination>.disabled>a:focus, .pagination>.disabled>a:hover, .pagination>.disabled>span, .pagination>.disabled>span:focus, .pagination>.disabled>span:hover {
    background-color: #5E81AC;
}

.pagination>li>a, .pagination>li>span {
    background-color: #81A1C1;
}

td a {
    color: #b2e4ff;
}

a:focus, a:hover, .navbar-default .navbar-brand:hover {
    color: #c9ecff;
}
`)