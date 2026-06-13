<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Artikel;
use App\Models\KategoriArtikel;

class VisitorController extends Controller
{
    // Menampilkan halaman utama (Beranda)
    public function index(Request $request)
    {
        // Mengambil semua data kategori untuk widget
        $kategori = KategoriArtikel::all();

        // Query dasar mengambil artikel beserta relasi penulis dan kategori, diurutkan dari terbaru
        $query = Artikel::with(['penulis', 'kategori'])->orderBy('created_at', 'desc');

        // Jika ada filter kategori dari widget samping
        if ($request->has('kategori')) {
            $query->where('id_kategori', $request->kategori);
        }

        // Mengambil 5 artikel terbaru
        $artikel = $query->paginate(5);

        return view('visitor.index', compact('artikel', 'kategori'));
    }

    // Menampilkan halaman detail artikel
    public function show($id)
    {
        // Mencari artikel berdasarkan ID
        $artikel = Artikel::with(['penulis', 'kategori'])->findOrFail($id);
        
        // Mengambil artikel terkait dari kategori yang sama (maksimal 5, kecuali artikel yang sedang dibaca)
        $artikelTerkait = Artikel::where('id_kategori', $artikel->id_kategori)
                                 ->where('id', '!=', $id)
                                 ->orderBy('created_at', 'desc')
                                 ->take(5)
                                 ->get();

        return view('visitor.detail', compact('artikel', 'artikelTerkait'));
    }
}