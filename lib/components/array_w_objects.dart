import 'package:flutter/material.dart';

class Vehicle {
  final String color;
  final String tipo;
  final DateTime registroDia;
  final int capacidad;

  Vehicle(
      {required this.color,
      required this.tipo,
      required this.registroDia,
      required this.capacidad});
}

class ArrayWithObjects extends StatelessWidget {
  ArrayWithObjects({super.key});

  final List<Vehicle> vehicles = [
    Vehicle(
        color: "morado",
        tipo: "minivan",
        registroDia: DateTime.parse('2012-02-03'),
        capacidad: 7),
    Vehicle(
        color: "azul",
        tipo: "auto",
        registroDia: DateTime.parse('2012-02-03'),
        capacidad: 5),
    Vehicle(
        color: "azul",
        tipo: "auto",
        registroDia: DateTime.parse('2012-02-03'),
        capacidad: 5),
    Vehicle(
        color: "azul",
        tipo: "auto",
        registroDia: DateTime.parse('2012-02-03'),
        capacidad: 5),
    Vehicle(
        color: "azul",
        tipo: "auto",
        registroDia: DateTime.parse('2012-02-03'),
        capacidad: 5),
    Vehicle(
        color: "azul",
        tipo: "auto",
        registroDia: DateTime.parse('2012-02-03'),
        capacidad: 5),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          // Si le pones height y le sacas el physics, tiene ese maximo y lo hace scrolleable.
          // Si le dejas el scroleable, simplemente ocupa lo que tenga que ocupar.
          // height: 400,
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: vehicles.length,
            itemBuilder: (context, index) {
              final vehicle = vehicles[index];
              return Card(
                child: ListTile(
                  title: Text('${vehicle.tipo} - ${vehicle.color}'),
                  subtitle: Text(
                      'Capacidad: ${vehicle.capacidad}, Registro: ${vehicle.registroDia.toLocal()}'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
