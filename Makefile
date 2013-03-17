
VOXBLOOM = ./css/voxbloom.css
VOXBLOOM_MIN = ./css/voxbloom.min.css
VOXBLOOM_LESS = ./less/voxbloom.less
BOOTSTRAP = ./css/bootstrap.css
BOOTSTRAP_MIN = ./css/bootstrap.min.css
BOOTSTRAP_RESPONSIVE = ./css/bootstrap-responsive.css
BOOTSTRAP_RESPONSIVE_MIN = ./css/bootstrap-responsive.min.css
BOOTSTRAP_LESS = ./less/bootstrap/bootstrap.less
BOOTSTRAP_RESPONSIVE_LESS = ./less/bootstrap/responsive.less
DATE=$(shell date +%I:%M%p)

build:
	@echo "Building Vox Bloom assets..."
	@echo "Compiling LESS with Recess..."
	@recess --compile ${VOXBLOOM_LESS} > ${VOXBLOOM}
	@recess --compress ${VOXBLOOM_LESS} > ${VOXBLOOM_MIN}
	@recess --compile ${BOOTSTRAP_LESS} > ${BOOTSTRAP}
	@recess --compress ${BOOTSTRAP_LESS} > ${BOOTSTRAP_MIN}
	@recess --compile ${BOOTSTRAP_RESPONSIVE_LESS} > ${BOOTSTRAP_RESPONSIVE}
	@recess --compress ${BOOTSTRAP_RESPONSIVE_LESS} > ${BOOTSTRAP_RESPONSIVE_MIN}
	@echo "...Done"

clean:
	@rm ${BOOTSTRAP} ${BOOTSTRAP_MIN} ${BOOTSTRAP_RESPONSIVE} ${BOOTSTRAP_RESPONSIVE_MIN}

