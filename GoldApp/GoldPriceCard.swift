import SwiftUI

struct GoldPriceCard: View {
    let karat: String
    let price: String

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Karat")
                        .font(.subheadline.weight(.semibold))
                        .foregroundColor(.gray)
                    Text(karat)
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .foregroundStyle(.white)
                }
                Spacer()
                Image(systemName: "sparkles")
                    .font(.title2)
                    .foregroundStyle(.yellow)
            }

            VStack(alignment: .leading, spacing: 4) {
                Text("Price")
                    .font(.subheadline.weight(.semibold))
                    .foregroundColor(.gray)
                Text(price)
                    .font(.system(size: 24, weight: .semibold, design: .rounded))
                    .foregroundStyle(.white)
            }
        }
        .padding(24)
        .background(
            RoundedRectangle(cornerRadius: 24, style: .continuous)
                .fill(
                    LinearGradient(
                        colors: [Color(red: 0.06, green: 0.06, blue: 0.08), Color(red: 0.12, green: 0.12, blue: 0.16)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .shadow(color: Color.black.opacity(0.45), radius: 20, x: 0, y: 10)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 24, style: .continuous)
                .stroke(Color.white.opacity(0.08), lineWidth: 1)
        )
    }
}

#Preview {
    GoldPriceCard(karat: "24K", price: "$2,200 / oz")
        .padding()
        .background(Color(red: 0.04, green: 0.04, blue: 0.06))
}
