@section('footer')<!-- INIT FOOTER -->
            <footer class="footer mt-auto py-3 bg-white text-center">
                <div class="container">
                    <span class="text-muted">
                        Copyright © 2{{COPYRIGHT_YEAR}}
                        <a href="{{COPYRIGHT_LINK}}" class="text-dark fw-semibold">
                            {{COPYRIGHT_NAME}}
                        </a>. 
                        <br>
                        Powered by
                        <a href="{{POWERED_LINK}}">
                            <span class="fw-semibold  text-dark text-decoration-underline">{{POWERED_NAME}}</span>
                        </a>
                        Todos os direitos reservados
                    </span>
                </div>
            </footer>

            {{-- DO FRAMEWORK --}}
            @hasSection('modals')
                @yield('modals')
            @endif

            @hasSection('scriptsFooter')@yield('scriptsFooter')@endif

            <script src="/public/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script src="/public/assets/libs/@popperjs/core/umd/popper.min.js"></script> 
            <script src="/public/assets/libs/@simonwep/pickr/pickr.es5.min.js"></script>
            <script src="/public/assets/js/template/defaultmenu.min.js?v={{CACHE}}"></script>
            <script src="/public/assets/js/template/custom.js?v={{CACHE}}"></script>
            <!-- END FOOTER -->
@endsection


































































































