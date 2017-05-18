init_args = {"pi": {"type": "real(dp)", "dimension": null}, "tpi": {"type": "real(dp)", "dimension": null}, "fpi": {"type": "real(dp)", "dimension": null}, "sqrtpi": {"type": "real(dp)", "dimension": null}, "sqrtpm1": {"type": "real(dp)", "dimension": null}, "sqrt2": {"type": "real(dp)", "dimension": null}, "H_PLANCK_SI": {"type": "real(dp)", "dimension": null}, "K_BOLTZMANN_SI": {"type": "real(dp)", "dimension": null}, "ELECTRON_SI": {"type": "real(dp)", "dimension": null}, "ELECTRONVOLT_SI": {"type": "real(dp)", "dimension": null}, "ELECTRONMASS_SI": {"type": "real(dp)", "dimension": null}, "HARTREE_SI": {"type": "real(dp)", "dimension": null}, "RYDBERG_SI": {"type": "real(dp)", "dimension": null}, "BOHR_RADIUS_SI": {"type": "real(dp)", "dimension": null}, "AMU_SI": {"type": "real(dp)", "dimension": null}, "C_SI": {"type": "real(dp)", "dimension": null}, "MUNOUGHT_SI": {"type": "real(dp)", "dimension": null}, "EPSNOUGHT_SI": {"type": "real(dp)", "dimension": null}, "K_BOLTZMANN_AU": {"type": "real(dp)", "dimension": null}, "K_BOLTZMANN_RY": {"type": "real(dp)", "dimension": null}, "AUTOEV": {"type": "real(dp)", "dimension": null}, "RYTOEV": {"type": "real(dp)", "dimension": null}, "AMU_AU": {"type": "real(dp)", "dimension": null}, "AMU_RY": {"type": "real(dp)", "dimension": null}, "AU_SEC": {"type": "real(dp)", "dimension": null}, "AU_PS": {"type": "real(dp)", "dimension": null}, "AU_GPA": {"type": "real(dp)", "dimension": null}, "RY_KBAR": {"type": "real(dp)", "dimension": null}, "DEBYE_SI": {"type": "real(dp)", "dimension": null}, "AU_DEBYE": {"type": "real(dp)", "dimension": null}, "eV_to_kelvin": {"type": "real(dp)", "dimension": null}, "ry_to_kelvin": {"type": "real(dp)", "dimension": null}, "EVTONM": {"type": "real(dp)", "dimension": null}, "RYTONM": {"type": "real(dp)", "dimension": null}, "C_AU": {"type": "real(dp)", "dimension": null}, "eps4": {"type": "real(dp)", "dimension": null}, "eps6": {"type": "real(dp)", "dimension": null}, "eps8": {"type": "real(dp)", "dimension": null}, "eps12": {"type": "real(dp)", "dimension": null}, "eps14": {"type": "real(dp)", "dimension": null}, "eps16": {"type": "real(dp)", "dimension": null}, "eps24": {"type": "real(dp)", "dimension": null}, "eps32": {"type": "real(dp)", "dimension": null}, "gsmall": {"type": "real(dp)", "dimension": null}, "e2": {"type": "real(dp)", "dimension": null}, "degspin": {"type": "real(dp)", "dimension": null}, "BOHR_RADIUS_CM": {"type": "real(dp)", "dimension": null}, "BOHR_RADIUS_ANGS": {"type": "real(dp)", "dimension": null}, "ANGSTROM_AU": {"type": "real(dp)", "dimension": null}, "DIP_DEBYE": {"type": "real(dp)", "dimension": null}, "AU_TERAHERTZ": {"type": "real(dp)", "dimension": null}, "AU_TO_OHMCMM1": {"type": "real(dp)", "dimension": null}, "RY_TO_THZ": {"type": "real(dp)", "dimension": null}, "RY_TO_GHZ": {"type": "real(dp)", "dimension": null}, "RY_TO_CMM1": {"type": "real(dp)", "dimension": null}, "AVOGADRO": {"type": "real(dp)", "dimension": null}}
type :: constants_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: pi = 3.14159265358979323846_dp
  real(dp) :: tpi = 2.0_dp * pi
  real(dp) :: fpi = 4.0_dp * pi
  real(dp) :: sqrtpi = 1.77245385090551602729_dp
  real(dp) :: sqrtpm1 = 1.0_dp / sqrtpi
  real(dp) :: sqrt2 = 1.41421356237309504880_dp
  real(dp) :: H_PLANCK_SI = 6.62606896e-34_dp
  real(dp) :: K_BOLTZMANN_SI = 1.3806504e-23_dp
  real(dp) :: ELECTRON_SI = 1.602176487e-19_dp
  real(dp) :: ELECTRONVOLT_SI = 1.602176487e-19_dp
  real(dp) :: ELECTRONMASS_SI = 9.10938215e-31_dp
  real(dp) :: HARTREE_SI = 4.35974394e-18_dp
  real(dp) :: RYDBERG_SI = hartree_si/2.0_dp
  real(dp) :: BOHR_RADIUS_SI = 0.52917720859e-10_dp
  real(dp) :: AMU_SI = 1.660538782e-27_dp
  real(dp) :: C_SI = 2.99792458e+8_dp
  real(dp) :: MUNOUGHT_SI = fpi*1.0e-7_dp
  real(dp) :: EPSNOUGHT_SI = 1.0_dp / (munought_si *  c_si**2)
  real(dp) :: K_BOLTZMANN_AU = k_boltzmann_si / hartree_si
  real(dp) :: K_BOLTZMANN_RY = k_boltzmann_si / rydberg_si
  real(dp) :: AUTOEV = hartree_si / electronvolt_si
  real(dp) :: RYTOEV = autoev / 2.0_dp
  real(dp) :: AMU_AU = amu_si / electronmass_si
  real(dp) :: AMU_RY = amu_au / 2.0_dp
  real(dp) :: AU_SEC = h_planck_si/tpi/hartree_si
  real(dp) :: AU_PS = au_sec * 1.0e+12_dp
  real(dp) :: AU_GPA = hartree_si / bohr_radius_si ** 3  / 1.0e+9_dp
  real(dp) :: RY_KBAR = 10.0_dp * au_gpa / 2.0_dp
  real(dp) :: DEBYE_SI = 3.3356409519_dp * 1.0e-30_dp
  real(dp) :: AU_DEBYE = electron_si * bohr_radius_si /  debye_si
  real(dp) :: eV_to_kelvin = electronvolt_si / k_boltzmann_si
  real(dp) :: ry_to_kelvin = rydberg_si / k_boltzmann_si
  real(dp) :: EVTONM = 1e+9_dp * h_planck_si * c_si /  electronvolt_si
  real(dp) :: RYTONM = 1e+9_dp * h_planck_si * c_si / rydberg_si
  real(dp) :: C_AU = c_si / bohr_radius_si * au_sec
  real(dp) :: eps4 = 1.0e-4_dp
  real(dp) :: eps6 = 1.0e-6_dp
  real(dp) :: eps8 = 1.0e-8_dp
  real(dp) :: eps12 = 1.0e-12_dp
  real(dp) :: eps14 = 1.0e-14_dp
  real(dp) :: eps16 = 1.0e-16_dp
  real(dp) :: eps24 = 1.0e-24_dp
  real(dp) :: eps32 = 1.0e-32_dp
  real(dp) :: gsmall = 1.0e-12_dp
  real(dp) :: e2 = 2.0_dp
  real(dp) :: degspin = 2.0_dp
  real(dp) :: BOHR_RADIUS_CM = bohr_radius_si * 100.0_dp
  real(dp) :: BOHR_RADIUS_ANGS = bohr_radius_cm * 1.0e8_dp
  real(dp) :: ANGSTROM_AU = 1.0_dp/bohr_radius_angs
  real(dp) :: DIP_DEBYE = au_debye
  real(dp) :: AU_TERAHERTZ = au_ps
  real(dp) :: AU_TO_OHMCMM1 = 46000.0_dp
  real(dp) :: RY_TO_THZ = 1.0_dp / au_terahertz / fpi
  real(dp) :: RY_TO_GHZ = ry_to_thz*1000.0_dp
  real(dp) :: RY_TO_CMM1 = 1.e+10_dp * ry_to_thz / c_si
  real(dp) :: AVOGADRO = 6.02214129d+23
  real(dp) :: AVOGADRO = 6.02214129d+23
contains
  procedure, pass :: init
  procedure, pass :: update
end type constants_type
