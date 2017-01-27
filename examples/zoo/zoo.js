var graphData = {
  nodes: [
 { data: { id: 'animals', name: 'animals' } },
 { data: { id: ':animal_type', name: ':animal_type' } },
 { data: { id: 'giraffes', name: 'giraffes' } },
 { data: { id: 'tigers', name: 'tigers' } },
 { data: { id: 'giraffe', name: 'giraffe' } },
 { data: { id: 'empty_cage', name: 'empty_cage' } },
 { data: { id: 'tiger', name: 'tiger' } },

  ],
  edges: [
 { data: { source: 'animals', target: ':animal_type', label: 'add_animal_type', color: 'purple' } },
 { data: { source: 'animals', target: 'giraffes', label: 'giraffes', color: 'green' } },
 { data: { source: 'animals', target: 'tigers', label: 'tigers', color: 'green' } },
 { data: { source: 'giraffe', target: 'empty_cage', label: 'free', color: 'red' } },
 { data: { source: 'giraffe', target: 'giraffe', label: 'feed', color: 'blue' } },
 { data: { source: 'giraffes', target: 'giraffe', label: 'giraffe', color: 'green' } },
 { data: { source: 'giraffes', target: 'giraffe', label: 'add_giraffe', color: 'purple' } },
 { data: { source: 'tiger', target: 'empty_cage', label: 'free', color: 'red' } },
 { data: { source: 'tiger', target: 'tiger', label: 'check_hunger', color: 'green' } },
 { data: { source: 'tiger', target: 'tiger', label: 'feed', color: 'blue' } },
 { data: { source: 'tigers', target: 'tiger', label: 'tiger', color: 'green' } },
 { data: { source: 'tigers', target: 'tiger', label: 'add_tiger', color: 'purple' } },

  ]
};
