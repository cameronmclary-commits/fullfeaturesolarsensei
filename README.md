# Solar Sensei - Full Featured Site

A modern Next.js application built with:
- **Next.js 16** - React framework
- **Tailwind CSS** - Styling
- **Shadcn/UI** - UI components
- **TypeScript** - Type safety
- **Prisma** - ORM for database
- **NextAuth** - Authentication

## Getting Started

### Prerequisites
- Node.js 18+ or Bun
- PostgreSQL database (for production)

### Local Development

1. **Clone the repository**
   ```bash
   git clone https://github.com/cameronmclary-commits/fullfeaturesolarsensei.git
   cd fullfeaturesolarsensei
   ```

2. **Install dependencies**
   ```bash
   bun install
   # or
   npm install
   ```

3. **Set up environment variables**
   ```bash
   cp .env.example .env.local
   # Edit .env.local with your database URL and secrets
   ```

4. **Set up the database**
   ```bash
   bun run db:generate
   bun run db:push
   ```

5. **Start the development server**
   ```bash
   bun run dev
   ```
   Open [http://localhost:3000](http://localhost:3000)

## Available Scripts

- `bun run dev` - Start development server
- `bun run build` - Build for production
- `bun start` - Start production server
- `bun run lint` - Run ESLint
- `bun run db:push` - Push database schema
- `bun run db:generate` - Generate Prisma client
- `bun run db:migrate` - Run migrations
- `bun run db:reset` - Reset database

## Deployment to Vercel

### Quick Steps:

1. **Push to GitHub**
   ```bash
   git push origin main
   ```

2. **Connect to Vercel**
   - Go to [vercel.com](https://vercel.com)
   - Click "New Project"
   - Select this repository
   - Click "Import"

3. **Set Environment Variables in Vercel**
   - In Vercel dashboard: Settings → Environment Variables
   - Add:
     - `DATABASE_URL` - Your PostgreSQL connection string
     - `NEXTAUTH_SECRET` - Generate with: `openssl rand -base64 32`
     - `NEXTAUTH_URL` - Your Vercel domain (e.g., `https://yoursite.vercel.app`)

4. **Deploy**
   - Vercel automatically deploys on `main` branch pushes
   - Check your site at `https://yourproject.vercel.app`

## Database Setup (Production)

For Vercel deployment:
1. Set up a PostgreSQL database (Vercel Postgres, Railway, Neon, etc.)
2. Get the connection string
3. Add it as `DATABASE_URL` in Vercel Environment Variables

## Project Structure

```
.
├── app/                    # Next.js app directory
├── components/            # React components
├── lib/                   # Utility functions
├── prisma/               # Database schema
├── public/               # Static assets
├── .env.example          # Example environment variables
├── package.json          # Dependencies
├── tsconfig.json         # TypeScript config
├── tailwind.config.ts    # Tailwind config
└── vercel.json           # Vercel deployment config
```

## Support

For questions or issues, check the [GitHub Issues](https://github.com/cameronmclary-commits/fullfeaturesolarsensei/issues)
