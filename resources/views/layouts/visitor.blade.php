<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog Kami</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Mengatur halaman agar memenuhi tinggi layar */
        html,
        body {
            height: 100%;
            margin: 0;
            display: flex;
            flex-direction: column;
        }

        /* Mendorong konten agar mengisi ruang kosong */
        .container {
            flex: 1 0 auto;
        }

        /* Footer tetap di bawah */
        .footer {
            flex-shrink: 0;
            background-color: #2c3e50;
            color: white;
            padding: 15px 0;
            text-align: center;
        }

        /* Efek Animasi untuk Kategori */
        .kategori-link {
            display: block;
            padding: 10px 15px;
            border-radius: 8px;
            /* Membuat sudut membulat */
            transition: all 0.3s ease;
            /* Kunci dari animasi halusnya */
        }

        /* Tampilan saat kursor diarahkan (Hover) */
        .kategori-link:hover {
            background-color: #2c3e50;
            /* Warna biru gelap senada dengan Navbar */
            color: #ffffff !important;
            /* Teks berubah putih */
            transform: translateX(8px);
            /* Efek bergeser ke kanan */
        }

        /* Tampilan untuk kategori yang sedang aktif/dipilih */
        .kategori-link.active-kat {
            background-color: #198754;
            /* Warna hijau success Bootstrap */
            color: #ffffff !important;
            font-weight: bold;
            box-shadow: 0 4px 6px rgba(25, 135, 84, 0.2);
        }
    </style>
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-dark shadow-sm" style="background-color: #2c3e50;">
        <div class="container">
            <a class="navbar-brand fw-bold" href="{{ route('visitor.index') }}">
                Blog Kami
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link {{ request()->routeIs('visitor.index') ? 'active fw-bold text-white' : '' }}" href="{{ route('visitor.index') }}">Beranda</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="#">Artikel</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="#">Kategori</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="#">Tentang</a>
                    </li>
                    <li class="nav-item ms-lg-3 mt-2 mt-lg-0">
                        <a class="btn btn-outline-light btn-sm w-100" href="{{ url('/login') }}">Login Admin</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-4">
        @yield('content')
    </div>

    <div class="footer">
        <p class="mb-0">&copy; 2026 Blog Kami. Seluruh hak cipta dilindungi.</p>
    </div>

</body>

</html>