@include('app.system.views.desktop.modals')
@include('app.system.views.desktop.scriptsFooter')
@include('app.projetos.'.getEnv('APP_NAME').'.desktop.views.head')
@include('app.projetos.'.getEnv('APP_NAME').'.desktop.views.header')
@include('app.projetos.'.getEnv('APP_NAME').'.desktop.views.sidebar')
@include('app.projetos.'.getEnv('APP_NAME').'.desktop.views.footer')

<html 
    {{getEnv('THEME')}}
    {{getEnv('COLOR_THEME')}} 
    data-nav-layout="vertical"
    data-nav-style="menu-click" 
    data-header-position="scrollable"
    data-vertical-style="overlay"
    close-menu-close="close-menu-close"
    data-toggled="open"
>

    @block('head')
    @block('modals')


    <body>
        <div class="page">

            @hasSection('header')@yield('header')@endif
            @hasSection('sidebar')@yield('sidebar')@endif
            
            <div class="slide-right slide-left"></div>

            <div id="preload_root">
                <div class="spinner-border d-flex justify-content-center" role="status" style=" position: fixed; z-index: 9999999999999999; top: 50%; left: 50%; "></div>
            </div>
            <div class="main-content app-content" >
                <div class="container-fluid" data-ajaxUrl="" style="display: block;">{{$page}}</div>
            </div>

            <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="searchModal" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="input-group">
                                <a href="javascript:void(0);" class="input-group-text" id="Search-Grid"><i class="fe fe-search header-link-icon fs-18"></i></a>
                                <input type="search" class="form-control border-0 px-2" placeholder="Search" aria-label="Username" />
                                <a href="javascript:void(0);" class="input-group-text" id="voice-search"><i class="fe fe-mic header-link-icon"></i></a>
                                <a href="javascript:void(0);" class="btn btn-light btn-icon" data-bs-toggle="dropdown" aria-expanded="false"> <i class="fe fe-more-vertical"></i> </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="empty.html#">Action</a></li>
                                    <li><a class="dropdown-item" href="empty.html#">Another action</a></li>
                                    <li><a class="dropdown-item" href="empty.html#">Something else here</a></li>
                                    <li><hr class="dropdown-divider" /></li>
                                    <li><a class="dropdown-item" href="empty.html#">Separated link</a></li>
                                </ul>
                            </div>
                            <div class="mt-4">
                                <p class="font-weight-semibold text-muted mb-2">Are You Looking For...</p>
                                <span class="search-tags">
                                    <i class="fe fe-user me-2"></i>People<a href="javascript:void(0)" class="tag-addon"><i class="fe fe-x"></i></a>
                                </span>
                                <span class="search-tags">
                                    <i class="fe fe-file-text me-2"></i>Pages<a href="javascript:void(0)" class="tag-addon"><i class="fe fe-x"></i></a>
                                </span>
                                <span class="search-tags">
                                    <i class="fe fe-align-left me-2"></i>Articles<a href="javascript:void(0)" class="tag-addon"><i class="fe fe-x"></i></a>
                                </span>
                                <span class="search-tags">
                                    <i class="fe fe-server me-2"></i>Tags<a href="javascript:void(0)" class="tag-addon"><i class="fe fe-x"></i></a>
                                </span>
                            </div>
                            <div class="my-4">
                                <p class="font-weight-semibold text-muted mb-2">Recent Search :</p>
                                <div class="p-2 border br-5 d-flex align-items-center text-muted mb-2 alert">
                                    <a href="notifications.html"><span>Notifications</span></a> <a class="ms-auto lh-1" href="javascript:void(0);" data-bs-dismiss="alert" aria-label="Close"><i class="fe fe-x text-muted"></i></a>
                                </div>
                                <div class="p-2 border br-5 d-flex align-items-center text-muted mb-2 alert">
                                    <a href="alerts.html"><span>Alerts</span></a> <a class="ms-auto lh-1" href="javascript:void(0);" data-bs-dismiss="alert" aria-label="Close"><i class="fe fe-x text-muted"></i></a>
                                </div>
                                <div class="p-2 border br-5 d-flex align-items-center text-muted mb-0 alert">
                                    <a href="mail.html"><span>Mail</span></a> <a class="ms-auto lh-1" href="javascript:void(0);" data-bs-dismiss="alert" aria-label="Close"><i class="fe fe-x text-muted"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <div class="btn-group ms-auto"><button class="btn btn-sm btn-primary-light">Search</button> <button class="btn btn-sm btn-primary">Clear Recents</button></div>
                        </div>
                    </div>
                </div>
            </div>
            @hasSection('footer')@yield('footer')@endif
        </div>
        <div class="scrollToTop">
            <span class="arrow">
                <i class="ri-arrow-up-s-fill fs-20"></i>
            </span>
        </div>
        <div id="responsive-overlay"></div>
        <script typ="text/javascript">
            {!!system\lib\system::windowCsrf_token('ajax-nav')!!}
        </script>
    </body>
</html>