@extends('layouts.visitor')

@section('content')
<div class="row">
    <div class="col-md-8">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('visitor.index') }}" class="text-decoration-none">Beranda</a></li>
                <li class="breadcrumb-item"><a href="{{ route('visitor.index', ['kategori' => $artikel->id_kategori]) }}" class="text-decoration-none">{{ $artikel->kategori->nama_kategori }}</a></li>
                <li class="breadcrumb-item active" aria-current="page">{{ $artikel->judul }}</li>
            </ol>
        </nav>

        <div class="card">
            <!-- Perbaikan path gambar artikel -->
            @if($artikel->gambar)
                <img src="{{ asset('storage/gambar/' . $artikel->gambar) }}" class="card-img-top" alt="{{ $artikel->judul }}" style="width: 100%; height: auto;">
            @endif
            <div class="card-body">
                <h2 class="card-title mb-3">{{ $artikel->judul }}</h2>
                <div class="d-flex align-items-center mb-4 text-muted">
                    <!-- Perbaikan path foto penulis -->
                    @if($artikel->penulis->foto)
                        <img src="{{ asset('storage/foto/' . $artikel->penulis->foto) }}" class="rounded-circle me-2" width="40" height="40" alt="Foto">
                    @endif
                    <div>
                        <!-- Perbaikan nama penulis -->
                        <div class="fw-bold">{{ $artikel->penulis->nama_depan }} {{ $artikel->penulis->nama_belakang }}</div>
                        <div class="small">{{ $artikel->created_at->format('d M Y - H:i') }}</div>
                    </div>
                </div>
                
                <div class="card-text" style="line-height: 1.8;">
                    {!! $artikel->isi !!}
                </div>
                
                <a href="{{ route('visitor.index') }}" class="btn btn-outline-secondary mt-4">&larr; Kembali ke Beranda</a>
            </div>
        </div>
    </div>

    <div class="col-md-4">
        <div class="card">
            <div class="card-header bg-white fw-bold">
                Artikel Terkait
            </div>
            <ul class="list-group list-group-flush">
                @forelse ($artikelTerkait as $terkait)
                    <li class="list-group-item">
                        <a href="{{ route('visitor.show', $terkait->id) }}" class="text-decoration-none text-dark d-block">
                            <div class="fw-bold">{{ $terkait->judul }}</div>
                            <small class="text-muted">{{ $terkait->created_at->format('d M Y') }}</small>
                        </a>
                    </li>
                @empty
                    <li class="list-group-item text-muted small">Tidak ada artikel terkait.</li>
                @endforelse
            </ul>
        </div>
    </div>
</div>
@endsection