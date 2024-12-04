//
//  Escritor.swift
//  Sesion06b
//
//  Created by DAMII on 3/12/24.
//

import SwiftUI

extension Escritor {
    var librosArray: [Libro] {
        let coleccion = self.libros as? Set<Libro> ?? []
        return coleccion.sorted { (libroA: Libro, libroB: Libro) in
            (libroA.nombre ?? "") < (libroB.nombre ?? "")
        }
    }
}
