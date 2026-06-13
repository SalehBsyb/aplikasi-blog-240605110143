@extends('layouts.visitor')

@section('content')
<div class="row">
    <div class="col-md-8">
        <h4 class="mb-4">Artikel Terbaru</h4>

        @forelse ($artikel as $item)
        <div class="card">
            @if($item->gambar)
            <img src="{{ asset('storage/gambar/' . $item->gambar) }}" class="card-img-top" alt="{{ $item->judul }}" style="height: 300px; object-fit: cover;">
            @endif
            <div class="card-body">
                <span class="badge bg-primary mb-2">{{ $item->kategori->nama_kategori }}</span>
                <h4 class="card-title">{{ $item->judul }}</h4>
                <p class="text-muted small">
                    Oleh: {{ $item->penulis->nama_depan }} {{ $item->penulis->nama_belakang }} | {{ $item->created_at->format('d M Y') }}
                </p>
                <p class="card-text">{{ Str::limit(strip_tags($item->isi), 150) }}</p>
                <a href="{{ route('visitor.show', $item->id) }}" class="btn btn-success btn-sm">Baca Selengkapnya &rarr;</a>
            </div>
        </div>
        @empty
        <div class="alert alert-warning">
            Maaf, belum ada artikel untuk kategori ini.
        </div>
        @endforelse

        <div class="d-flex justify-content-center mt-4">
            {{ $artikel->links('pagination::bootstrap-5') }}
        </div>
    </div>

    <div class="col-md-4">
        <div class="card shadow-sm border-0">
            <div class="card-header bg-white fw-bold border-bottom-0 pt-3 pb-0">
                Kategori Artikel
            </div>
            <div class="card-body">
                <ul class="list-group list-group-flush border-0">
                    <li class="list-group-item border-0 p-1">
                        <a href="{{ route('visitor.index') }}" class="text-decoration-none text-dark kategori-link {{ !request('kategori') ? 'active-kat' : '' }}">
                            Semua Artikel
                        </a>
                    </li>

                    @foreach ($kategori as $kat)
                    <li class="list-group-item border-0 p-1">
                        <a href="{{ route('visitor.index', ['kategori' => $kat->id]) }}" class="text-decoration-none text-dark kategori-link {{ request('kategori') == $kat->id ? 'active-kat' : '' }}">
                            {{ $kat->nama_kategori }}
                        </a>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
</div>
@endsection