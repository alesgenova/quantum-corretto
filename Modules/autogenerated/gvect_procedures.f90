subroutine gvect_type_init(this, ngm, ngm_g, ngl, ngmx, ecutrho, gcutm, nl, nlm, gstart, gg, gl, igtongl, g, mill, ig_l2g, sortedig_l2g, mill_g, eigts1, eigts2, eigts3)
  implicit none

  type(gvect_type), intent(inout) :: this

  integer, intent(in), optional :: ngm
  integer, intent(in), optional :: ngm_g
  integer, intent(in), optional :: ngl
  integer, intent(in), optional :: ngmx
  real(dp), intent(in), optional :: ecutrho
  real(dp), intent(in), optional :: gcutm
  integer, dimension(:), intent(in), optional :: nl
  integer, dimension(:), intent(in), optional :: nlm
  integer, intent(in), optional :: gstart
  real(dp), dimension(:), intent(in), optional :: gg
  real(dp), dimension(:), intent(in), optional :: gl
  integer, dimension(:), intent(in), optional :: igtongl
  real(dp), dimension(:,:), intent(in), optional :: g
  integer, dimension(:,:), intent(in), optional :: mill
  integer, dimension(:), intent(in), optional :: ig_l2g
  integer, dimension(:), intent(in), optional :: sortedig_l2g
  integer, dimension(:,:), intent(in), optional :: mill_g
  complex(dp), dimension(:,:), intent(in), optional :: eigts1
  complex(dp), dimension(:,:), intent(in), optional :: eigts2
  complex(dp), dimension(:,:), intent(in), optional :: eigts3

  if (present(ngm)) this%ngm = ngm
  if (present(ngm_g)) this%ngm_g = ngm_g
  if (present(ngl)) this%ngl = ngl
  if (present(ngmx)) this%ngmx = ngmx
  if (present(ecutrho)) this%ecutrho = ecutrho
  if (present(gcutm)) this%gcutm = gcutm
  if (present(nl)) this%nl = nl
  if (present(nlm)) this%nlm = nlm
  if (present(gstart)) this%gstart = gstart
  if (present(gg)) this%gg = gg
  if (present(gl)) this%gl = gl
  if (present(igtongl)) this%igtongl = igtongl
  if (present(g)) this%g = g
  if (present(mill)) this%mill = mill
  if (present(ig_l2g)) this%ig_l2g = ig_l2g
  if (present(sortedig_l2g)) this%sortedig_l2g = sortedig_l2g
  if (present(mill_g)) this%mill_g = mill_g
  if (present(eigts1)) this%eigts1 = eigts1
  if (present(eigts2)) this%eigts2 = eigts2
  if (present(eigts3)) this%eigts3 = eigts3

  return
end subroutine gvect_type_init

subroutine gvect_type_alloc(this, fft_base, ions_base)
  use memory_manager_module, only: memory_manager

  implicit none

  type(gvect_type), intent(inout) :: this

  type(fft_base_type), intent(in) :: fft_base
  type(ions_base_type), intent(in) :: ions_base

  integer :: istat

  allocate( this%nl(this%ngm), stat=istat )
  call memory_manager('gvect_type%alloc', 'nl', this%nl(:), 1, istat)
  allocate( this%nlm(this%ngm), stat=istat )
  call memory_manager('gvect_type%alloc', 'nlm', this%nlm(:), 1, istat)
  allocate( this%gg(this%ngm), stat=istat )
  call memory_manager('gvect_type%alloc', 'gg', this%gg(:), 1, istat)
  allocate( this%igtongl(this%ngm), stat=istat )
  call memory_manager('gvect_type%alloc', 'igtongl', this%igtongl(:), 1, istat)
  allocate( this%g(3, this%ngm), stat=istat )
  call memory_manager('gvect_type%alloc', 'g', this%g(:,:), 1, istat)
  allocate( this%mill(3, this%ngm), stat=istat )
  call memory_manager('gvect_type%alloc', 'mill', this%mill(:,:), 1, istat)
  allocate( this%ig_l2g(this%ngm), stat=istat )
  call memory_manager('gvect_type%alloc', 'ig_l2g', this%ig_l2g(:), 1, istat)
  allocate( this%sortedig_l2g(this%ngm), stat=istat )
  call memory_manager('gvect_type%alloc', 'sortedig_l2g', this%sortedig_l2g(:), 1, istat)
  allocate( this%mill_g(3, this%ngm), stat=istat )
  call memory_manager('gvect_type%alloc', 'mill_g', this%mill_g(:,:), 1, istat)
  allocate( this%eigts1(-fft_base%nr1:fft_base%nr1, ions_base%nat), stat=istat )
  call memory_manager('gvect_type%alloc', 'eigts1', this%eigts1(:,:), 1, istat)
  allocate( this%eigts2(-fft_base%nr2:fft_base%nr2, ions_base%nat), stat=istat )
  call memory_manager('gvect_type%alloc', 'eigts2', this%eigts2(:,:), 1, istat)
  allocate( this%eigts3(-fft_base%nr3:fft_base%nr3, ions_base%nat), stat=istat )
  call memory_manager('gvect_type%alloc', 'eigts3', this%eigts3(:,:), 1, istat)

  this%is_alloc = .true.

  return
end subroutine gvect_type_alloc

subroutine gvect_type_dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  type(gvect_type_type), intent(inout) :: this
  integer :: istat

  deallocate( this%nl, stat=istat )
  call memory_manager('gvect_type%dealloc', 'nl', this%nl(:), -1, istat)
  deallocate( this%nlm, stat=istat )
  call memory_manager('gvect_type%dealloc', 'nlm', this%nlm(:), -1, istat)
  deallocate( this%gg, stat=istat )
  call memory_manager('gvect_type%dealloc', 'gg', this%gg(:), -1, istat)
  deallocate( this%igtongl, stat=istat )
  call memory_manager('gvect_type%dealloc', 'igtongl', this%igtongl(:), -1, istat)
  deallocate( this%g, stat=istat )
  call memory_manager('gvect_type%dealloc', 'g', this%g(:,:), -1, istat)
  deallocate( this%mill, stat=istat )
  call memory_manager('gvect_type%dealloc', 'mill', this%mill(:,:), -1, istat)
  deallocate( this%ig_l2g, stat=istat )
  call memory_manager('gvect_type%dealloc', 'ig_l2g', this%ig_l2g(:), -1, istat)
  deallocate( this%sortedig_l2g, stat=istat )
  call memory_manager('gvect_type%dealloc', 'sortedig_l2g', this%sortedig_l2g(:), -1, istat)
  deallocate( this%mill_g, stat=istat )
  call memory_manager('gvect_type%dealloc', 'mill_g', this%mill_g(:,:), -1, istat)
  deallocate( this%eigts1, stat=istat )
  call memory_manager('gvect_type%dealloc', 'eigts1', this%eigts1(:,:), -1, istat)
  deallocate( this%eigts2, stat=istat )
  call memory_manager('gvect_type%dealloc', 'eigts2', this%eigts2(:,:), -1, istat)
  deallocate( this%eigts3, stat=istat )
  call memory_manager('gvect_type%dealloc', 'eigts3', this%eigts3(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine gvect_type_dealloc

