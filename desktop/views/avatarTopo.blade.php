                <div class="header-element">
                    <!-- Start::header-link|dropdown-toggle -->
                    <a href="empty.html#" class="header-link dropdown-toggle" id="mainHeaderProfile" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
                        <div class="d-flex align-items-center">
                            <div class="me-sm-2 me-0"><img src="/project/public/assets/images/faces/9.jpg" alt="img" width="32" height="32" class="rounded-circle" /></div>
                            <div class="d-sm-block d-none">
                                <p class="fw-semibold mb-0 lh-1">{{$user['NOME']}}</p>
                                <span class="op-7 fw-normal d-block fs-11">{{$user['EMAIL']}}</span>
                            </div>
                        </div>
                    </a>
                    <!-- End::header-link|dropdown-toggle -->
                    <ul class="main-header-dropdown dropdown-menu pt-0 overflow-hidden header-profile-dropdown dropdown-menu-end" aria-labelledby="mainHeaderProfile">
                        {{-- <li>
                            <a class="dropdown-item d-flex" ajax-nav="true" href="/office/user/ficha-de-cadastro">
                                <i class="bi bi-person-vcard fs-18 me-2 op-7"></i>
                                Meus dados
                            </a>
                        </li> --}}
                        {{-- <li>
                            <a class="dropdown-item d-flex" ajax-nav="true" href="/office/terms-conditions">
                                <i class="bi bi-file-text-fill fs-18 me-2 op-7"></i>
                                Termos e Condições
                            </a>
                        </li> --}}
                        <li>
                            <a class="dropdown-item d-flex" href="/system/log-out">
                                <i class="bi bi-box-arrow-right fs-18 me-2 op-7"></i>
                                Log Out
                            </a>
                        </li>
                    </ul>
                </div>