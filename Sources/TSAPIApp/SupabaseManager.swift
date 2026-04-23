import Foundation
import Supabase

enum SupabaseManager {
    private static let fallbackURL = "https://mzquawbrdbdhgqafswit.supabase.co"
    private static let fallbackKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im16cXVhd2JyZGJkaGdxYWZzd2l0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzQ4NjI0ODQsImV4cCI6MjA5MDQzODQ4NH0.tc6Qn6SzazfjNXHBbupF_KXmlvkteaUXeqGwN8x0zRo"

    static func makeClient() -> SupabaseClient {
        let env = ProcessInfo.processInfo.environment
        let urlString = env["SUPABASE_URL"].flatMap({ $0.isEmpty ? nil : $0 }) ?? fallbackURL
        let key = env["SUPABASE_ANON_KEY"].flatMap({ $0.isEmpty ? nil : $0 }) ?? fallbackKey
        guard let url = URL(string: urlString) else {
            return SupabaseClient(supabaseURL: URL(string: fallbackURL)!, supabaseKey: fallbackKey)
        }
        return SupabaseClient(supabaseURL: url, supabaseKey: key)
    }
}
