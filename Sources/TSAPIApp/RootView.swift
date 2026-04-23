import SwiftUI

struct RootView: View {
    private let accent = Color(red: 0x0E / 255.0, green: 0xA5 / 255.0, blue: 0xE9 / 255.0)

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "network")
                .font(.system(size: 72))
                .foregroundStyle(accent)
            Text("TSAPI")
                .font(.system(size: 34, weight: .bold))
            Text("Gobierno de claves, auditoría de llamadas y confiabilidad de integraciones del ecosistema.")
                .font(.title3)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 48)
            Text("Esqueleto inicial. Pendiente: inventario de claves, logs y alertas.")
                .font(.callout)
                .foregroundStyle(.tertiary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(48)
    }
}
