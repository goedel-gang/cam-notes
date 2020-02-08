.PHONY: goedel_all goedel_clean

goedel_all:
	find . -name "*.tex" -execdir latexmk {} \;

goedel_clean:
	find . -name "*.tex" -execdir latexmk -c \;

ALL: IA_M IA_L IB_M IB_L IB_E III_M III_L III_E II_M II_L IV_M IV_L IV_E

IA_M/groups_trim.pdf: IA_M/groups.tex
	./gen.sh IA_M/groups.tex
	cd IA_M; ./sync.sh groups*
	echo "`date --rfc-3339=seconds` - groups.tex" >> ~/.sync-log

IA_M/numbers_and_sets_trim.pdf: IA_M/numbers_and_sets.tex
	./gen.sh IA_M/numbers_and_sets.tex
	cd IA_M; ./sync.sh numbers_and_sets*
	echo "`date --rfc-3339=seconds` - numbers_and_sets.tex" >> ~/.sync-log

IA_M/vectors_and_matrices_trim.pdf: IA_M/vectors_and_matrices.tex
	./gen.sh IA_M/vectors_and_matrices.tex
	cd IA_M; ./sync.sh vectors_and_matrices*
	echo "`date --rfc-3339=seconds` - vectors_and_matrices.tex" >> ~/.sync-log

IA_M/differential_equations_trim.pdf: IA_M/differential_equations.tex
	./gen.sh IA_M/differential_equations.tex
	cd IA_M; ./sync.sh differential_equations*
	echo "`date --rfc-3339=seconds` - differential_equations.tex" >> ~/.sync-log

IA_M: IA_M/groups_trim.pdf IA_M/numbers_and_sets_trim.pdf IA_M/vectors_and_matrices_trim.pdf IA_M/differential_equations_trim.pdf

IA_L/analysis_i_trim.pdf: IA_L/analysis_i.tex
	./gen.sh IA_L/analysis_i.tex
	cd IA_L; ./sync.sh analysis_i*
	echo "`date --rfc-3339=seconds` - analysis_i.tex" >> ~/.sync-log

IA_L/vector_calculus_trim.pdf: IA_L/vector_calculus.tex
	./gen.sh IA_L/vector_calculus.tex
	cd IA_L; ./sync.sh vector_calculus*
	echo "`date --rfc-3339=seconds` - vector_calculus.tex" >> ~/.sync-log

IA_L/probability_trim.pdf: IA_L/probability.tex
	./gen.sh IA_L/probability.tex
	cd IA_L; ./sync.sh probability*
	echo "`date --rfc-3339=seconds` - probability.tex" >> ~/.sync-log

IA_L/dynamics_and_relativity_trim.pdf: IA_L/dynamics_and_relativity.tex
	./gen.sh IA_L/dynamics_and_relativity.tex
	cd IA_L; ./sync.sh dynamics_and_relativity*
	echo "`date --rfc-3339=seconds` - dynamics_and_relativity.tex" >> ~/.sync-log

IA_L: IA_L/analysis_i_trim.pdf IA_L/vector_calculus_trim.pdf IA_L/probability_trim.pdf IA_L/dynamics_and_relativity_trim.pdf

IB_M/quantum_mechanics_trim.pdf: IB_M/quantum_mechanics.tex
	./gen.sh IB_M/quantum_mechanics.tex
	cd IB_M; ./sync.sh quantum_mechanics*
	echo "`date --rfc-3339=seconds` - quantum_mechanics.tex" >> ~/.sync-log

IB_M/linear_algebra_trim.pdf: IB_M/linear_algebra.tex
	./gen.sh IB_M/linear_algebra.tex
	cd IB_M; ./sync.sh linear_algebra*
	echo "`date --rfc-3339=seconds` - linear_algebra.tex" >> ~/.sync-log

IB_M/markov_chains_trim.pdf: IB_M/markov_chains.tex
	./gen.sh IB_M/markov_chains.tex
	cd IB_M; ./sync.sh markov_chains*
	echo "`date --rfc-3339=seconds` - markov_chains.tex" >> ~/.sync-log

IB_M/analysis_ii_trim.pdf: IB_M/analysis_ii.tex
	./gen.sh IB_M/analysis_ii.tex
	cd IB_M; ./sync.sh analysis_ii*
	echo "`date --rfc-3339=seconds` - analysis_ii.tex" >> ~/.sync-log

IB_M/methods_trim.pdf: IB_M/methods.tex
	./gen.sh IB_M/methods.tex
	cd IB_M; ./sync.sh methods*
	echo "`date --rfc-3339=seconds` - methods.tex" >> ~/.sync-log

IB_M: IB_M/quantum_mechanics_trim.pdf IB_M/linear_algebra_trim.pdf IB_M/markov_chains_trim.pdf IB_M/analysis_ii_trim.pdf IB_M/methods_trim.pdf

IB_L/statistics_trim.pdf: IB_L/statistics.tex
	./gen.sh IB_L/statistics.tex
	cd IB_L; ./sync.sh statistics*
	echo "`date --rfc-3339=seconds` - statistics.tex" >> ~/.sync-log

IB_L/fluid_dynamics_trim.pdf: IB_L/fluid_dynamics.tex
	./gen.sh IB_L/fluid_dynamics.tex
	cd IB_L; ./sync.sh fluid_dynamics*
	echo "`date --rfc-3339=seconds` - fluid_dynamics.tex" >> ~/.sync-log

IB_L/electromagnetism_trim.pdf: IB_L/electromagnetism.tex
	./gen.sh IB_L/electromagnetism.tex
	cd IB_L; ./sync.sh electromagnetism*
	echo "`date --rfc-3339=seconds` - electromagnetism.tex" >> ~/.sync-log

IB_L/numerical_analysis_trim.pdf: IB_L/numerical_analysis.tex
	./gen.sh IB_L/numerical_analysis.tex
	cd IB_L; ./sync.sh numerical_analysis*
	echo "`date --rfc-3339=seconds` - numerical_analysis.tex" >> ~/.sync-log

IB_L/complex_methods_trim.pdf: IB_L/complex_methods.tex
	./gen.sh IB_L/complex_methods.tex
	cd IB_L; ./sync.sh complex_methods*
	echo "`date --rfc-3339=seconds` - complex_methods.tex" >> ~/.sync-log

IB_L/complex_analysis_trim.pdf: IB_L/complex_analysis.tex
	./gen.sh IB_L/complex_analysis.tex
	cd IB_L; ./sync.sh complex_analysis*
	echo "`date --rfc-3339=seconds` - complex_analysis.tex" >> ~/.sync-log

IB_L/geometry_trim.pdf: IB_L/geometry.tex
	./gen.sh IB_L/geometry.tex
	cd IB_L; ./sync.sh geometry*
	echo "`date --rfc-3339=seconds` - geometry.tex" >> ~/.sync-log

IB_L/groups_rings_and_modules_trim.pdf: IB_L/groups_rings_and_modules.tex
	./gen.sh IB_L/groups_rings_and_modules.tex
	cd IB_L; ./sync.sh groups_rings_and_modules*
	echo "`date --rfc-3339=seconds` - groups_rings_and_modules.tex" >> ~/.sync-log

IB_L: IB_L/statistics_trim.pdf IB_L/fluid_dynamics_trim.pdf IB_L/electromagnetism_trim.pdf IB_L/numerical_analysis_trim.pdf IB_L/complex_methods_trim.pdf IB_L/complex_analysis_trim.pdf IB_L/geometry_trim.pdf IB_L/groups_rings_and_modules_trim.pdf

IB_E/optimisation_trim.pdf: IB_E/optimisation.tex
	./gen.sh IB_E/optimisation.tex
	cd IB_E; ./sync.sh optimisation*
	echo "`date --rfc-3339=seconds` - optimisation.tex" >> ~/.sync-log

IB_E/variational_principles_trim.pdf: IB_E/variational_principles.tex
	./gen.sh IB_E/variational_principles.tex
	cd IB_E; ./sync.sh variational_principles*
	echo "`date --rfc-3339=seconds` - variational_principles.tex" >> ~/.sync-log

IB_E/metric_and_topological_spaces_trim.pdf: IB_E/metric_and_topological_spaces.tex
	./gen.sh IB_E/metric_and_topological_spaces.tex
	cd IB_E; ./sync.sh metric_and_topological_spaces*
	echo "`date --rfc-3339=seconds` - metric_and_topological_spaces.tex" >> ~/.sync-log

IB_E: IB_E/optimisation_trim.pdf IB_E/variational_principles_trim.pdf IB_E/metric_and_topological_spaces_trim.pdf

III_M/symmetries_fields_and_particles_trim.pdf: III_M/symmetries_fields_and_particles.tex
	./gen.sh III_M/symmetries_fields_and_particles.tex
	cd III_M; ./sync.sh symmetries_fields_and_particles*
	echo "`date --rfc-3339=seconds` - symmetries_fields_and_particles.tex" >> ~/.sync-log

III_M/modern_statistical_methods_trim.pdf: III_M/modern_statistical_methods.tex
	./gen.sh III_M/modern_statistical_methods.tex
	cd III_M; ./sync.sh modern_statistical_methods*
	echo "`date --rfc-3339=seconds` - modern_statistical_methods.tex" >> ~/.sync-log

III_M/local_fields_trim.pdf: III_M/local_fields.tex
	./gen.sh III_M/local_fields.tex
	cd III_M; ./sync.sh local_fields*
	echo "`date --rfc-3339=seconds` - local_fields.tex" >> ~/.sync-log

III_M/quantum_computation_trim.pdf: III_M/quantum_computation.tex
	./gen.sh III_M/quantum_computation.tex
	cd III_M; ./sync.sh quantum_computation*
	echo "`date --rfc-3339=seconds` - quantum_computation.tex" >> ~/.sync-log

III_M/differential_geometry_trim.pdf: III_M/differential_geometry.tex
	./gen.sh III_M/differential_geometry.tex
	cd III_M; ./sync.sh differential_geometry*
	echo "`date --rfc-3339=seconds` - differential_geometry.tex" >> ~/.sync-log

III_M/quantum_field_theory_trim.pdf: III_M/quantum_field_theory.tex
	./gen.sh III_M/quantum_field_theory.tex
	cd III_M; ./sync.sh quantum_field_theory*
	echo "`date --rfc-3339=seconds` - quantum_field_theory.tex" >> ~/.sync-log

III_M/hydrodynamic_stability_trim.pdf: III_M/hydrodynamic_stability.tex
	./gen.sh III_M/hydrodynamic_stability.tex
	cd III_M; ./sync.sh hydrodynamic_stability*
	echo "`date --rfc-3339=seconds` - hydrodynamic_stability.tex" >> ~/.sync-log

III_M/percolation_and_random_walks_on_graphs_trim.pdf: III_M/percolation_and_random_walks_on_graphs.tex
	./gen.sh III_M/percolation_and_random_walks_on_graphs.tex
	cd III_M; ./sync.sh percolation_and_random_walks_on_graphs*
	echo "`date --rfc-3339=seconds` - percolation_and_random_walks_on_graphs.tex" >> ~/.sync-log

III_M/advanced_probability_trim.pdf: III_M/advanced_probability.tex
	./gen.sh III_M/advanced_probability.tex
	cd III_M; ./sync.sh advanced_probability*
	echo "`date --rfc-3339=seconds` - advanced_probability.tex" >> ~/.sync-log

III_M/combinatorics_trim.pdf: III_M/combinatorics.tex
	./gen.sh III_M/combinatorics.tex
	cd III_M; ./sync.sh combinatorics*
	echo "`date --rfc-3339=seconds` - combinatorics.tex" >> ~/.sync-log

III_M/algebraic_topology_iii_trim.pdf: III_M/algebraic_topology_iii.tex
	./gen.sh III_M/algebraic_topology_iii.tex
	cd III_M; ./sync.sh algebraic_topology_iii*
	echo "`date --rfc-3339=seconds` - algebraic_topology_iii.tex" >> ~/.sync-log

III_M/analysis_of_partial_differential_equations_trim.pdf: III_M/analysis_of_partial_differential_equations.tex
	./gen.sh III_M/analysis_of_partial_differential_equations.tex
	cd III_M; ./sync.sh analysis_of_partial_differential_equations*
	echo "`date --rfc-3339=seconds` - analysis_of_partial_differential_equations.tex" >> ~/.sync-log

III_M/extremal_graph_theory_trim.pdf: III_M/extremal_graph_theory.tex
	./gen.sh III_M/extremal_graph_theory.tex
	cd III_M; ./sync.sh extremal_graph_theory*
	echo "`date --rfc-3339=seconds` - extremal_graph_theory.tex" >> ~/.sync-log

III_M: III_M/symmetries_fields_and_particles_trim.pdf III_M/modern_statistical_methods_trim.pdf III_M/local_fields_trim.pdf III_M/quantum_computation_trim.pdf III_M/differential_geometry_trim.pdf III_M/quantum_field_theory_trim.pdf III_M/hydrodynamic_stability_trim.pdf III_M/percolation_and_random_walks_on_graphs_trim.pdf III_M/advanced_probability_trim.pdf III_M/combinatorics_trim.pdf III_M/algebraic_topology_iii_trim.pdf III_M/analysis_of_partial_differential_equations_trim.pdf III_M/extremal_graph_theory_trim.pdf

III_L/modular_forms_and_l_functions_trim.pdf: III_L/modular_forms_and_l_functions.tex
	./gen.sh III_L/modular_forms_and_l_functions.tex
	cd III_L; ./sync.sh modular_forms_and_l_functions*
	echo "`date --rfc-3339=seconds` - modular_forms_and_l_functions.tex" >> ~/.sync-log

III_L/theoretical_physics_of_soft_condensed_matter_trim.pdf: III_L/theoretical_physics_of_soft_condensed_matter.tex
	./gen.sh III_L/theoretical_physics_of_soft_condensed_matter.tex
	cd III_L; ./sync.sh theoretical_physics_of_soft_condensed_matter*
	echo "`date --rfc-3339=seconds` - theoretical_physics_of_soft_condensed_matter.tex" >> ~/.sync-log

III_L/schramm-loewner_evolutions_trim.pdf: III_L/schramm-loewner_evolutions.tex
	./gen.sh III_L/schramm-loewner_evolutions.tex
	cd III_L; ./sync.sh schramm-loewner_evolutions*
	echo "`date --rfc-3339=seconds` - schramm-loewner_evolutions.tex" >> ~/.sync-log

III_L/stochastic_calculus_and_applications_trim.pdf: III_L/stochastic_calculus_and_applications.tex
	./gen.sh III_L/stochastic_calculus_and_applications.tex
	cd III_L; ./sync.sh stochastic_calculus_and_applications*
	echo "`date --rfc-3339=seconds` - stochastic_calculus_and_applications.tex" >> ~/.sync-log

III_L/logic_trim.pdf: III_L/logic.tex
	./gen.sh III_L/logic.tex
	cd III_L; ./sync.sh logic*
	echo "`date --rfc-3339=seconds` - logic.tex" >> ~/.sync-log

III_L/positivity_in_algebraic_geometry_trim.pdf: III_L/positivity_in_algebraic_geometry.tex
	./gen.sh III_L/positivity_in_algebraic_geometry.tex
	cd III_L; ./sync.sh positivity_in_algebraic_geometry*
	echo "`date --rfc-3339=seconds` - positivity_in_algebraic_geometry.tex" >> ~/.sync-log

III_L/ramsey_theory_trim.pdf: III_L/ramsey_theory.tex
	./gen.sh III_L/ramsey_theory.tex
	cd III_L; ./sync.sh ramsey_theory*
	echo "`date --rfc-3339=seconds` - ramsey_theory.tex" >> ~/.sync-log

III_L/advanced_quantum_field_theory_trim.pdf: III_L/advanced_quantum_field_theory.tex
	./gen.sh III_L/advanced_quantum_field_theory.tex
	cd III_L; ./sync.sh advanced_quantum_field_theory*
	echo "`date --rfc-3339=seconds` - advanced_quantum_field_theory.tex" >> ~/.sync-log

III_L/symplectic_geometry_trim.pdf: III_L/symplectic_geometry.tex
	./gen.sh III_L/symplectic_geometry.tex
	cd III_L; ./sync.sh symplectic_geometry*
	echo "`date --rfc-3339=seconds` - symplectic_geometry.tex" >> ~/.sync-log

III_L/algebras_trim.pdf: III_L/algebras.tex
	./gen.sh III_L/algebras.tex
	cd III_L; ./sync.sh algebras*
	echo "`date --rfc-3339=seconds` - algebras.tex" >> ~/.sync-log

III_L/riemannian_geometry_trim.pdf: III_L/riemannian_geometry.tex
	./gen.sh III_L/riemannian_geometry.tex
	cd III_L; ./sync.sh riemannian_geometry*
	echo "`date --rfc-3339=seconds` - riemannian_geometry.tex" >> ~/.sync-log

III_L/the_standard_model_trim.pdf: III_L/the_standard_model.tex
	./gen.sh III_L/the_standard_model.tex
	cd III_L; ./sync.sh the_standard_model*
	echo "`date --rfc-3339=seconds` - the_standard_model.tex" >> ~/.sync-log

III_L: III_L/modular_forms_and_l_functions_trim.pdf III_L/theoretical_physics_of_soft_condensed_matter_trim.pdf III_L/schramm-loewner_evolutions_trim.pdf III_L/stochastic_calculus_and_applications_trim.pdf III_L/logic_trim.pdf III_L/positivity_in_algebraic_geometry_trim.pdf III_L/ramsey_theory_trim.pdf III_L/advanced_quantum_field_theory_trim.pdf III_L/symplectic_geometry_trim.pdf III_L/algebras_trim.pdf III_L/riemannian_geometry_trim.pdf III_L/the_standard_model_trim.pdf

III_E/supersymmetry_trim.pdf: III_E/supersymmetry.tex
	./gen.sh III_E/supersymmetry.tex
	cd III_E; ./sync.sh supersymmetry*
	echo "`date --rfc-3339=seconds` - supersymmetry.tex" >> ~/.sync-log

III_E/classical_and_quantum_solitons_trim.pdf: III_E/classical_and_quantum_solitons.tex
	./gen.sh III_E/classical_and_quantum_solitons.tex
	cd III_E; ./sync.sh classical_and_quantum_solitons*
	echo "`date --rfc-3339=seconds` - classical_and_quantum_solitons.tex" >> ~/.sync-log

III_E: III_E/supersymmetry_trim.pdf III_E/classical_and_quantum_solitons_trim.pdf

II_M/linear_analysis_trim.pdf: II_M/linear_analysis.tex
	./gen.sh II_M/linear_analysis.tex
	cd II_M; ./sync.sh linear_analysis*
	echo "`date --rfc-3339=seconds` - linear_analysis.tex" >> ~/.sync-log

II_M/probability_and_measure_trim.pdf: II_M/probability_and_measure.tex
	./gen.sh II_M/probability_and_measure.tex
	cd II_M; ./sync.sh probability_and_measure*
	echo "`date --rfc-3339=seconds` - probability_and_measure.tex" >> ~/.sync-log

II_M/galois_theory_trim.pdf: II_M/galois_theory.tex
	./gen.sh II_M/galois_theory.tex
	cd II_M; ./sync.sh galois_theory*
	echo "`date --rfc-3339=seconds` - galois_theory.tex" >> ~/.sync-log

II_M/algebraic_topology_trim.pdf: II_M/algebraic_topology.tex
	./gen.sh II_M/algebraic_topology.tex
	cd II_M; ./sync.sh algebraic_topology*
	echo "`date --rfc-3339=seconds` - algebraic_topology.tex" >> ~/.sync-log

II_M/integrable_systems_trim.pdf: II_M/integrable_systems.tex
	./gen.sh II_M/integrable_systems.tex
	cd II_M; ./sync.sh integrable_systems*
	echo "`date --rfc-3339=seconds` - integrable_systems.tex" >> ~/.sync-log

II_M: II_M/linear_analysis_trim.pdf II_M/probability_and_measure_trim.pdf II_M/galois_theory_trim.pdf II_M/algebraic_topology_trim.pdf II_M/integrable_systems_trim.pdf

II_L/logic_and_set_theory_trim.pdf: II_L/logic_and_set_theory.tex
	./gen.sh II_L/logic_and_set_theory.tex
	cd II_L; ./sync.sh logic_and_set_theory*
	echo "`date --rfc-3339=seconds` - logic_and_set_theory.tex" >> ~/.sync-log

II_L/number_fields_trim.pdf: II_L/number_fields.tex
	./gen.sh II_L/number_fields.tex
	cd II_L; ./sync.sh number_fields*
	echo "`date --rfc-3339=seconds` - number_fields.tex" >> ~/.sync-log

II_L/representation_theory_trim.pdf: II_L/representation_theory.tex
	./gen.sh II_L/representation_theory.tex
	cd II_L; ./sync.sh representation_theory*
	echo "`date --rfc-3339=seconds` - representation_theory.tex" >> ~/.sync-log

II_L/statistical_physics_trim.pdf: II_L/statistical_physics.tex
	./gen.sh II_L/statistical_physics.tex
	cd II_L; ./sync.sh statistical_physics*
	echo "`date --rfc-3339=seconds` - statistical_physics.tex" >> ~/.sync-log

II_L: II_L/logic_and_set_theory_trim.pdf II_L/number_fields_trim.pdf II_L/representation_theory_trim.pdf II_L/statistical_physics_trim.pdf

IV_M/topics_in_geometric_group_theory_trim.pdf: IV_M/topics_in_geometric_group_theory.tex
	./gen.sh IV_M/topics_in_geometric_group_theory.tex
	cd IV_M; ./sync.sh topics_in_geometric_group_theory*
	echo "`date --rfc-3339=seconds` - topics_in_geometric_group_theory.tex" >> ~/.sync-log

IV_M: IV_M/topics_in_geometric_group_theory_trim.pdf

IV_L/topics_in_number_theory_trim.pdf: IV_L/topics_in_number_theory.tex
	./gen.sh IV_L/topics_in_number_theory.tex
	cd IV_L; ./sync.sh topics_in_number_theory*
	echo "`date --rfc-3339=seconds` - topics_in_number_theory.tex" >> ~/.sync-log

IV_L: IV_L/topics_in_number_theory_trim.pdf

IV_E/bounded_cohomology_trim.pdf: IV_E/bounded_cohomology.tex
	./gen.sh IV_E/bounded_cohomology.tex
	cd IV_E; ./sync.sh bounded_cohomology*
	echo "`date --rfc-3339=seconds` - bounded_cohomology.tex" >> ~/.sync-log

IV_E: IV_E/bounded_cohomology_trim.pdf

.PHONY: clean
clean:
	rm -vf */*~ */*.log */*.bbl */*.blg */*.toc */*.aux */*.out */*.idx */*.ilg */*.ind
	rm -vf */*_html.tex */*_trim.tex */*_def.tex */*_def_thm.tex */*_thm_proof.tex
	rm -vrf */*_output */*_tmp
