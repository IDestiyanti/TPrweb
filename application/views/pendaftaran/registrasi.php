<div class="container">
 <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h1 mb-0 text-gray-800">Pendaftaran Judul Seminar</h1>
    </div>
<!-- form -->
<?= $this->session->flashdata('sukses'); ?>
<?php if(isset($error)) { echo $error; }; ?>
 <form action="<?= base_url('Login_mhs/Registrasi/'.$mahasiswa->username) ?>" method="post">
    <hr>
    <div class="row">
			<div class="col-lg-6 col-sm-12">
				<div class="form-group">
					<label for="nama">Bidang Peminatan</label>
                        <select class="custom-select" id="ddl" name="bidang_minat" onchange="configureDropDownLists(this,document.getElementById('ddl2'))">
                        <option value="">Pilih bidang peminatan</option>
                        <option value="Machine Learning">Machine Learning</option>
                        <option value="Multimedia">Multimedia</option>
                        <option value="AI Game">AI Game</option>
                        <option value="Pengenalan Pola">Pengenalan Pola</option>
                        </select>
                    <?php echo form_error('bidang_minat'); ?>
				</div>
			</div>
			<div class="col-lg-6 col-sm-12">
            <div class="form-group">
                    <label for="ttl">Dosen Pembimbing</label>
                    <select class="custom-select" name="dosen" id="ddl2">
                    </select>
                    <?php echo form_error('dosen'); ?>
				</div>
            </div>
    </div>
    <div class="row">
        <div class="col-lg-6 col-sm-12">
                <div class="form-group">
					<label for="niy">NIY</label>
                    <input type="text" class="form-control" name="niy">
                    <?php echo form_error('niy'); ?>
				</div>
        </div>
        <div class="col-lg-6 col-sm-12">
                <div class="form-group">
					<label for="nama">Judul</label>
                    <input type="text" class="form-control" name="judul">
                    <?php echo form_error('judul'); ?>
				</div>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-lg-6 col-sm-12">
            <button class="btn btn-block btn-danger" type="reset">BATAL</button>
        </div>
        <div class="col-lg-6 col-sm-12">
            <button class="btn btn-block btn-primary" type="submit">SIMPAN</button>
        </div>
    </div>
 </form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
				$(".custom-file-input").on("change", function() {
				var fileName = $(this).val().split("\\").pop();
				$(this).siblings(".custom-file-label").addClass("selected").html(fileName);
				});
</script>
<script>
function configureDropDownLists(ddl1,ddl2) {
    var mesin = ['Dewi Normawati', 'Dewi Pramudi Ismi'];
    var mulmet = ['Ika Arfiani', 'Adhi Prahara', 'Ahmad Azhari','Wahyu Pujiono'];
    var game = ['Adhi Prahara', 'Ahmad Azhari'];
    var pola = ['Ahmad Azhari'];

    switch (ddl1.value) {
        case 'Machine Learning':
            ddl2.options.length = 0;
            for (i = 0; i < mesin.length; i++) {
                createOption(ddl2, mesin[i], mesin[i]);
            }
            break;
        case 'Multimedia':
            ddl2.options.length = 0; 
        for (i = 0; i < mulmet.length; i++) {
            createOption(ddl2, mulmet[i], mulmet[i]);
            }
            break;
        case 'AI Game':
            ddl2.options.length = 0;
            for (i = 0; i < game.length; i++) {
                createOption(ddl2, game[i], game[i]);
            }
            break;
        case 'Pengenalan Pola':
            ddl2.options.length = 0;
            for (i = 0; i < pola.length; i++) {
                createOption(ddl2, pola[i], pola[i]);
            }
            break;
            default:
                ddl2.options.length = 0;
            break;
    }

}

    function createOption(ddl, text, value) {
        var opt = document.createElement('option');
        opt.value = value;
        opt.text = text;
        ddl.options.add(opt);
    }
</script>