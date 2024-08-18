<div id="modal_thumb" class="modal fade" aria-hidden="true" aria-labelledby="modal_banner" data-bs-keyboard="false" style="display: none;" >
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
			<div class="modal-body">
                <ul class="nav nav-tabs mb-3 d-none" role="tablist">
                    <li class="nav-item"><a class="nav-link active" data-bs-toggle="tab" href="#home1">Básico</a></li>
                    <li class="nav-item"><a class="nav-link"        data-bs-toggle="tab" href="#about1">Code implement</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="home1">
                        <form id="form-detalhes-thumb">
                            <div class="row mb-3">
                                <label class="col-12 col-form-label">Titulo:</label>
                                <div class="col-12">
                                    <div class="input-group">
                                        <input name="TITULO" type="text" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-12 col-form-label">Descrição:</label>
                                <div class="col-12">
                                    <div class="input-group">
                                        <input name="DESCRICAO" type="text" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
			</div>
            <div class="modal-footer">
				<button type="button" class="close-button button-close btn btn-danger">Cancelar</button>
				<button type="button" class="confirm-button btn btn-success">Salvar</button>
			</div>
        </div>
    </div>
</div>
<div id="modal_galeria" class="modal fade" aria-hidden="true" aria-labelledby="modal_banner" data-bs-keyboard="false" style="display: none;" >
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
			<div class="modal-body">
                <ul class="nav nav-tabs mb-3 d-none" role="tablist">
                    <li class="nav-item"><a class="nav-link active" data-bs-toggle="tab" href="#home1">Básico</a></li>
                    <li class="nav-item"><a class="nav-link"        data-bs-toggle="tab" href="#about1">Code implement</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="home1">
                        <form id="form-detalhes-galeria">
                            <div class="row mb-3">
                                <label class="col-12 col-form-label">Titulo:</label>
                                <div class="col-12">
                                    <div class="input-group">
                                        <input name="TITULO" type="text" class="form-control" id="nome-plugin">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
			</div>
            <div class="modal-footer">
				<button type="button" data-uidgaleria="[UID]" class="close-button button-close btn btn-danger">Cancelar</button>
				<button type="button" data-uidgaleria="[UID]" class="confirm-button btn btn-success config-galeria-galerias">Salvar</button>
			</div>
        </div>
    </div>
</div>


<div id="modal_plugin_galeria" class="modal fade" aria-hidden="true" aria-labelledby="modal_plugin_galeria" data-bs-keyboard="false" style="display: none;" >
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
			<div class="modal-body">
                <ul class="nav nav-tabs mb-3 d-none" role="tablist">
                    <li class="nav-item"><a class="nav-link active" data-bs-toggle="tab" href="#home1">Básico</a></li>
                    <li class="nav-item"><a class="nav-link"        data-bs-toggle="tab" href="#about1">Code implement</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="home1">
                        <form id="form-detalhes-plugin-galerias">
                            <div class="row mb-3">
                                <label class="col-6 col-form-label">Titulo:</label>
                                <label class="col-6 col-form-label">Slug:</label>
                                <div class="col-6">
                                    <div class="input-group">
                                        <input name="TITULO" type="text" class="form-control" id="nome-plugin">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="input-group">
                                        <input name="SLUG" type="text" class="form-control" id="slug-plugin">
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-12 col-form-label">Largura e altura das thumbs, exemplo: {W}x{H}</label>
                                <div class="col-12">
                                    <div class="input-group">
                                        <select name="TAMANHO" id="medidas-thumb" multiple>
                                            <option value="50x50x60">50x50x60</option>
                                            <option value="100x100x70">100x100x70</option>
                                            <option value="150x150">150x150</option>
                                            <option value="200x200">200x200</option>
                                        </select>
                                        {{-- <input placeholder="100x100,50x50,150x200" name="TITULO" type="text" class="form-control" id="medidas-thumb"> --}}
                                    </div>
                                </div>
                        
                            </div>
                            <fieldset class="row mb-3">
                                <div class="col-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="MULTIPLAS" id="MULTIPLAS1" value="1">
                                        <label class="form-check-label" for="MULTIPLAS1"> 
                                            Multiplas galerias
                                        </label>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="MULTIPLAS" id="MULTIPLAS2" value="2" checked="">
                                        <label class="form-check-label" for="MULTIPLAS2"> 
                                            Galeria única
                                        </label> 
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="MULTIPLAS" id="MULTIPLAS3" value="3">
                                        <label class="form-check-label" for="MULTIPLAS3"> 
                                            Imagem única
                                        </label>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                    <div class="tab-pane show" id="about1">

                        
                    </div>
                </div>
			</div>
            <div class="modal-footer">
				<button type="button" class="close-button button-close btn btn-danger">Cancelar</button>
				<button type="button" class="confirm-button btn btn-success">Salvar</button>
			</div>
        </div>
    </div>
</div>

