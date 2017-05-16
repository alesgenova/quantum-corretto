['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(qes_types_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(k_point)) allocate( k_point(:), stat=istat )
  if (.not. allocated(atom)) allocate( atom(:), stat=istat )
  if (.not. allocated(ionicPolarization)) allocate( ionicPolarization(:), stat=istat )
  if (.not. allocated(electronicPolarization)) allocate( electronicPolarization(:), stat=istat )
  if (.not. allocated(vec)) allocate( vec(:), stat=istat )
  if (.not. allocated(eigenvalues)) allocate( eigenvalues(:), stat=istat )
  if (.not. allocated(index_list)) allocate( index_list(:), stat=istat )
  if (.not. allocated(mat)) allocate( mat(:,:), stat=istat )
  if (.not. allocated(atomic_constraint)) allocate( atomic_constraint(:), stat=istat )
  if (.not. allocated(symmetry)) allocate( symmetry(:), stat=istat )
  if (.not. allocated(int_mat)) allocate( int_mat(:,:), stat=istat )
  if (.not. allocated(two_fermi_energies)) allocate( two_fermi_energies(:), stat=istat )
  if (.not. allocated(ks_energies)) allocate( ks_energies(:), stat=istat )
  if (.not. allocated(inputOccupations)) allocate( inputOccupations(:), stat=istat )
  if (.not. allocated(london_c6)) allocate( london_c6(:), stat=istat )
  if (.not. allocated(Hubbard_U)) allocate( Hubbard_U(:), stat=istat )
  if (.not. allocated(Hubbard_J0)) allocate( Hubbard_J0(:), stat=istat )
  if (.not. allocated(Hubbard_alpha)) allocate( Hubbard_alpha(:), stat=istat )
  if (.not. allocated(Hubbard_beta)) allocate( Hubbard_beta(:), stat=istat )
  if (.not. allocated(Hubbard_J)) allocate( Hubbard_J(:), stat=istat )
  if (.not. allocated(starting_ns)) allocate( starting_ns(:), stat=istat )
  if (.not. allocated(Hubbard_ns)) allocate( Hubbard_ns(:), stat=istat )
  if (.not. allocated(species)) allocate( species(:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(qes_types_module_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
