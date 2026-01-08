import { Metadata } from "next";

export const metadata: Metadata = {
    title: "Privacy Policy",
};

export default function PrivacyPage() {
    return (
        <main className="min-h-screen py-20 px-4 md:px-6">
            <div className="max-w-3xl mx-auto">
                <h1 className="text-3xl font-bold text-white mb-8">Privacy Policy</h1>

                <div className="prose prose-invert prose-pink max-w-none space-y-6 text-gray-300">
                    <p className="text-sm text-gray-400">Last updated: January 2026</p>

                    <section>
                        <h2 className="text-xl font-semibold text-white mt-8 mb-4">1. Information We Collect</h2>
                        <p>We collect the following types of information:</p>
                        <ul className="list-disc pl-6 space-y-2">
                            <li><strong>Account Information:</strong> Email address, display name when you sign up</li>
                            <li><strong>Usage Data:</strong> Learning progress, XP, streak counts, completed challenges</li>
                            <li><strong>Device Information:</strong> Browser type, device type for optimization</li>
                        </ul>
                    </section>

                    <section>
                        <h2 className="text-xl font-semibold text-white mt-8 mb-4">2. How We Use Your Information</h2>
                        <p>We use your information to:</p>
                        <ul className="list-disc pl-6 space-y-2">
                            <li>Provide and improve our educational services</li>
                            <li>Track your learning progress and achievements</li>
                            <li>Send you important updates about the Service</li>
                            <li>Personalize your learning experience</li>
                        </ul>
                    </section>

                    <section>
                        <h2 className="text-xl font-semibold text-white mt-8 mb-4">3. Information Sharing</h2>
                        <p>
                            We do not sell, trade, or rent your personal information to third parties.
                            We may share information only in the following circumstances:
                        </p>
                        <ul className="list-disc pl-6 space-y-2">
                            <li>With your consent</li>
                            <li>To comply with legal obligations</li>
                            <li>To protect our rights and safety</li>
                        </ul>
                    </section>

                    <section>
                        <h2 className="text-xl font-semibold text-white mt-8 mb-4">4. Data Security</h2>
                        <p>
                            We implement appropriate security measures to protect your personal information.
                            However, no method of transmission over the Internet is 100% secure.
                        </p>
                    </section>

                    <section>
                        <h2 className="text-xl font-semibold text-white mt-8 mb-4">5. Third-Party Services</h2>
                        <p>We use the following third-party services:</p>
                        <ul className="list-disc pl-6 space-y-2">
                            <li><strong>Supabase:</strong> Authentication and database</li>
                            <li><strong>Google OAuth:</strong> Social login</li>
                            <li><strong>X (Twitter) OAuth:</strong> Social login</li>
                            <li><strong>YouTube:</strong> Video content embedding</li>
                        </ul>
                    </section>

                    <section>
                        <h2 className="text-xl font-semibold text-white mt-8 mb-4">6. Your Rights</h2>
                        <p>You have the right to:</p>
                        <ul className="list-disc pl-6 space-y-2">
                            <li>Access your personal data</li>
                            <li>Request correction of your data</li>
                            <li>Request deletion of your account</li>
                            <li>Opt out of marketing communications</li>
                        </ul>
                    </section>

                    <section>
                        <h2 className="text-xl font-semibold text-white mt-8 mb-4">7. Cookies</h2>
                        <p>
                            We use cookies and similar technologies to maintain your session and preferences.
                            You can control cookies through your browser settings.
                        </p>
                    </section>

                    <section>
                        <h2 className="text-xl font-semibold text-white mt-8 mb-4">8. Changes to This Policy</h2>
                        <p>
                            We may update this Privacy Policy from time to time. We will notify you of any
                            changes by posting the new policy on this page.
                        </p>
                    </section>

                    <section>
                        <h2 className="text-xl font-semibold text-white mt-8 mb-4">9. Contact Us</h2>
                        <p>
                            For questions about this Privacy Policy, please contact us at privacy@kdictation.com
                        </p>
                    </section>
                </div>
            </div>
        </main>
    );
}
