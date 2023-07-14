About lammps-library-feedstock
==============================

Feedstock license: [BSD-3-Clause](https://github.com/deepmd-kit-recipes/lammps-dp-feedstock/blob/main/LICENSE.txt)

Home: http://lammps.sandia.gov

Package license: GPL-2.0

Summary: LAMMPS stands for Large-scale Atomic/Molecular Massively Parallel Simulator.

Development: https://github.com/lammps/lammps

Documentation: http://lammps.sandia.gov/doc/Manual.html

LAMMPS is a classical molecular dynamics simulation code designed to
run efficiently on parallel computers.  It was developed at Sandia
National Laboratories, a US Department of Energy facility, with
funding from the DOE.  It is an open-source code, distributed freely
under the terms of the GNU Public License (GPL).


Current build status
====================


<table>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/deepmd-kit-recipes/feedstock-builds/_build/latest?definitionId=3&branchName=main">
            <img src="https://dev.azure.com/deepmd-kit-recipes/feedstock-builds/_apis/build/status/lammps-dp-feedstock?branchName=main">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux_64</td>
              <td>
                <a href="https://dev.azure.com/deepmd-kit-recipes/feedstock-builds/_build/latest?definitionId=3&branchName=main">
                  <img src="https://dev.azure.com/deepmd-kit-recipes/feedstock-builds/_apis/build/status/lammps-dp-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-lammps-green.svg)](https://anaconda.org/deepmodeling/lammps) | [![Conda Downloads](https://img.shields.io/conda/dn/deepmodeling/lammps.svg)](https://anaconda.org/deepmodeling/lammps) | [![Conda Version](https://img.shields.io/conda/vn/deepmodeling/lammps.svg)](https://anaconda.org/deepmodeling/lammps) | [![Conda Platforms](https://img.shields.io/conda/pn/deepmodeling/lammps.svg)](https://anaconda.org/deepmodeling/lammps) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-pylammps-green.svg)](https://anaconda.org/deepmodeling/pylammps) | [![Conda Downloads](https://img.shields.io/conda/dn/deepmodeling/pylammps.svg)](https://anaconda.org/deepmodeling/pylammps) | [![Conda Version](https://img.shields.io/conda/vn/deepmodeling/pylammps.svg)](https://anaconda.org/deepmodeling/pylammps) | [![Conda Platforms](https://img.shields.io/conda/pn/deepmodeling/pylammps.svg)](https://anaconda.org/deepmodeling/pylammps) |

Installing lammps-library
=========================

Installing `lammps-library` from the `deepmodeling` channel can be achieved by adding `deepmodeling` to your channels with:

```
conda config --add channels deepmodeling
conda config --set channel_priority strict
```

Once the `deepmodeling` channel has been enabled, `lammps, pylammps` can be installed with `conda`:

```
conda install lammps pylammps
```

or with `mamba`:

```
mamba install lammps pylammps
```

It is possible to list all of the versions of `lammps` available on your platform with `conda`:

```
conda search lammps --channel deepmodeling
```

or with `mamba`:

```
mamba search lammps --channel deepmodeling
```

Alternatively, `mamba repoquery` may provide more information:

```
# Search all versions available on your platform:
mamba repoquery search lammps --channel deepmodeling

# List packages depending on `lammps`:
mamba repoquery whoneeds lammps --channel deepmodeling

# List dependencies of `lammps`:
mamba repoquery depends lammps --channel deepmodeling
```




Updating lammps-library-feedstock
=================================

If you would like to improve the lammps-library recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`deepmodeling` channel, whereupon the built conda packages will be available for
everybody to install and use from the `deepmodeling` channel.
Note that all branches in the deepmd-kit-recipes/lammps-library-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@njzjz](https://github.com/njzjz/)

