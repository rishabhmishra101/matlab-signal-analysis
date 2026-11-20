# MATLAB Stellar Spectra Analysis

A MATLAB learning project that visualizes stellar spectra, identifies a hydrogen-alpha absorption feature, and uses the wavelength shift to estimate redshift and radial velocity.

## Project contents

- `stellar_redshift_analysis.m` — plots one stellar spectrum, locates its minimum-intensity sample, marks the absorption feature, and calculates redshift and velocity.
- `compare_stellar_spectra.m` — plots spectra for multiple stars and classifies the calculated shifts as redshifted or blueshifted for visualization.
- `stellar_spectrum_plot.png` — saved plot output.
- `compare _stellar_spectra.png` — saved comparison plot (filename contains a space).

## Data dependency

The scripts use the `starData` dataset from the MATLAB Onramp training environment. The dataset is not included in this repository.

The comparison script loads `starData` with `load starData`. The single-spectrum script expects the variable `spectra` to already exist in the MATLAB workspace before it runs. Therefore, the single-spectrum script is not fully standalone in its current form.

The dataset is expected to provide the spectra matrix and wavelength information used by the scripts, along with star names for the comparison.

## Method

1. Create or use the wavelength vector.
2. Select a stellar spectrum.
3. Locate the minimum intensity sample as an estimate of the absorption line.
4. Compare the observed wavelength with the hydrogen-alpha reference wavelength (656.28 nm).
5. Calculate redshift: `z = (observed wavelength / reference wavelength) - 1`.
6. Estimate radial velocity using the project's simple relation: `v = z × 299792.458 km/s`.

This is a learning implementation and uses a simplified velocity estimate. It is not a complete astronomical analysis pipeline.

## Running

Run the scripts in MATLAB with the required `starData` dataset available. The dataset may be available in the MATLAB Onramp environment; it is not distributed here.

## Limitations

- Dataset availability is external to this repository.
- The minimum-intensity sample is used as a simple absorption-line detector.
- The velocity calculation is a simplified approximation.
- Results have not been independently validated against a scientific reference dataset.

## Learning objectives

- Matrix indexing and vector construction
- Plotting and labeling data
- Finding extrema
- Basic wavelength-shift calculations
- Working with training datasets and documenting dependencies
