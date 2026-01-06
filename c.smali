# classes3.dex

.class public abstract LU9/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = false

.field public static b:I = 0x1

.field public static c:Landroid/content/Context;

.field public static d:LV9/c;


# direct methods
.method public static A(JLjava/lang/String;)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") must be >= 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static B(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static C(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .registers 3

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_e

    :try_start_4
    invoke-static {p0, p1}, LU9/c;->D(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    invoke-static {p1}, LU9/c;->B(Ljava/io/Closeable;)V

    return p0

    :catchall_c
    move-exception p0

    goto :goto_10

    :catchall_e
    move-exception p0

    const/4 p1, 0x0

    :goto_10
    invoke-static {p1}, LU9/c;->B(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static D(Ljava/io/File;Ljava/io/InputStream;)Z
    .registers 7

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_6
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_2a
    .catchall {:try_start_6 .. :try_end_b} :catchall_28

    const/16 p0, 0x400

    :try_start_d
    new-array p0, p0, [B

    :goto_f
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_20

    invoke-virtual {v3, p0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_1d
    .catchall {:try_start_d .. :try_end_19} :catchall_1a

    goto :goto_f

    :catchall_1a
    move-exception p0

    move-object v2, v3

    goto :goto_4c

    :catch_1d
    move-exception p0

    move-object v2, v3

    goto :goto_2b

    :cond_20
    invoke-static {v3}, LU9/c;->B(Ljava/io/Closeable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 p0, 0x1

    return p0

    :catchall_28
    move-exception p0

    goto :goto_4c

    :catch_2a
    move-exception p0

    :goto_2b
    :try_start_2b
    const-string p1, "TypefaceCompatUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error copying resource contents to temp file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_28

    invoke-static {v2}, LU9/c;->B(Ljava/io/Closeable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :goto_4c
    invoke-static {v2}, LU9/c;->B(Ljava/io/Closeable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static final E(LF3/d;II)V
    .registers 4

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, LF3/d;->c(IILjava/lang/CharSequence;)V

    return-void
.end method

.method public static F(LFh/b;FFI)V
    .registers 5

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_6

    iget p1, p0, LFh/b;->b:F

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, LFh/b;->d:F

    :cond_c
    iget p3, p0, LFh/b;->b:F

    invoke-static {p3, p1}, Lra/b;->S(FF)F

    move-result p1

    iput p1, p0, LFh/b;->b:F

    iget p1, p0, LFh/b;->d:F

    invoke-static {p1, p2}, Lra/b;->S(FF)F

    move-result p1

    iput p1, p0, LFh/b;->d:F

    return-void
.end method

.method public static final G(LS3/b1;LS3/w;)Ljava/lang/Integer;
    .registers 4

    invoke-virtual {p0}, LS3/b1;->k()LS3/a1;

    move-result-object p0

    :try_start_4
    iget v0, p0, LS3/a1;->c:I

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, LU9/c;->H(LS3/a1;LS3/w;II)Ljava/lang/Integer;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    invoke-virtual {p0}, LS3/a1;->c()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, LS3/a1;->c()V

    throw p1
.end method

.method public static final H(LS3/a1;LS3/w;II)Ljava/lang/Integer;
    .registers 9

    :goto_0
    const/4 v0, 0x0

    if-ge p2, p3, :cond_5a

    iget-object v1, p0, LS3/a1;->b:[I

    mul-int/lit8 v2, p2, 0x5

    add-int/lit8 v2, v2, 0x3

    aget v2, v1, v2

    add-int/2addr v2, p2

    invoke-virtual {p0, p2}, LS3/a1;->j(I)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {p0, p2}, LS3/a1;->i(I)I

    move-result v3

    const/16 v4, 0xce

    if-ne v3, v4, :cond_41

    invoke-virtual {p0, p2, v1}, LS3/a1;->p(I[I)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, LS3/u;->e:LS3/l0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, LS3/a1;->h(II)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, LS3/q;

    if-eqz v3, :cond_32

    move-object v0, v1

    check-cast v0, LS3/q;

    :cond_32
    if-eqz v0, :cond_41

    iget-object v0, v0, LS3/q;->x:LS3/r;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_41
    invoke-virtual {p0, p2}, LS3/a1;->d(I)Z

    move-result v0

    if-eqz v0, :cond_58

    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2, v2}, LU9/c;->H(LS3/a1;LS3/w;II)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_58

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_58
    move p2, v2

    goto :goto_0

    :cond_5a
    return-object v0
.end method

.method public static I(Landroid/view/DisplayCutout;)Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static J(Landroid/content/Context;I)J
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-static {p0}, Ll4/o0;->c(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static K(Landroid/view/DisplayCutout;)I
    .registers 1

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0

    return p0
.end method

.method public static L(Landroid/view/DisplayCutout;)I
    .registers 1

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p0

    return p0
.end method

.method public static M(Landroid/view/DisplayCutout;)I
    .registers 1

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    return p0
.end method

.method public static N(Landroid/view/DisplayCutout;)I
    .registers 1

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p0

    return p0
.end method

.method public static O(I)I
    .registers 1

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static P(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static Q(Landroid/content/Context;)Ljava/io/File;
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".font"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2a
    const/16 v3, 0x64

    if-ge v2, v3, :cond_4c

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_42
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_49

    if-eqz v4, :cond_49

    return-object v3

    :catch_49
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_4c
    return-object v0
.end method

.method public static declared-synchronized R(Landroid/content/Context;)I
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-class v2, LU9/c;

    monitor-enter v2

    :try_start_5
    const-string v3, "Context is null"

    invoke-static {p0, v3}, Lu9/y;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "c"

    const-string v4, "null"

    const-string v5, "preferredRenderer: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, LU9/c;->a:Z
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_53

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    goto/16 :goto_8c

    :cond_1e
    :try_start_1e
    invoke-static {p0}, LU9/c;->p0(Landroid/content/Context;)LV9/c;

    move-result-object v3
    :try_end_22
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1e .. :try_end_22} :catch_95
    .catchall {:try_start_1e .. :try_end_22} :catchall_53

    :try_start_22
    invoke-virtual {v3}, LV9/c;->U()LV9/a;

    move-result-object v5

    invoke-static {v5}, Lu9/y;->g(Ljava/lang/Object;)V

    sput-object v5, Lq8/c;->b:LV9/a;

    invoke-virtual {v3}, LV9/c;->W()LR9/i;

    move-result-object v5

    sget-object v6, Lpa/w;->a:LR9/i;

    if-eqz v6, :cond_34

    goto :goto_3b

    :cond_34
    const-string v6, "delegate must not be null"

    invoke-static {v5, v6}, Lu9/y;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Lpa/w;->a:LR9/i;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_3b} :catch_8e
    .catchall {:try_start_22 .. :try_end_3b} :catchall_53

    :goto_3b
    :try_start_3b
    sput-boolean v1, LU9/c;->a:Z
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_53

    :try_start_3d
    invoke-virtual {v3}, LK9/a;->P()Landroid/os/Parcel;

    move-result-object v5

    const/16 v6, 0x9

    invoke-virtual {v3, v5, v6}, LK9/a;->N(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    if-ne v6, v0, :cond_57

    sput v0, LU9/c;->b:I

    goto :goto_57

    :catchall_53
    move-exception p0

    goto :goto_9a

    :catch_55
    move-exception p0

    goto :goto_6c

    :cond_57
    :goto_57
    new-instance v5, LC9/b;

    invoke-direct {v5, p0}, LC9/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3}, LK9/a;->P()Landroid/os/Parcel;

    move-result-object p0

    invoke-static {p0, v5}, LR9/f;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v5, 0xa

    invoke-virtual {v3, p0, v5}, LK9/a;->Q(Landroid/os/Parcel;I)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_6b} :catch_55
    .catchall {:try_start_3d .. :try_end_6b} :catchall_53

    goto :goto_73

    :goto_6c
    :try_start_6c
    const-string v3, "c"

    const-string v5, "Failed to retrieve renderer type or log initialization."

    invoke-static {v3, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_73
    const-string p0, "c"

    sget v3, LU9/c;->b:I

    if-eq v3, v1, :cond_81

    if-eq v3, v0, :cond_7e

    const-string v0, "null"

    goto :goto_83

    :cond_7e
    const-string v0, "LATEST"

    goto :goto_83

    :cond_81
    const-string v0, "LEGACY"

    :goto_83
    const-string v1, "loadedRenderer: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_6c .. :try_end_8c} :catchall_53

    :goto_8c
    monitor-exit v2

    return v4

    :catch_8e
    move-exception p0

    :try_start_8f
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_95
    move-exception p0

    iget p0, p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->x:I
    :try_end_98
    .catchall {:try_start_8f .. :try_end_98} :catchall_53

    monitor-exit v2

    return p0

    :goto_9a
    :try_start_9a
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_53

    throw p0
.end method

.method public static S(II)I
    .registers 2

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static final T(Ljava/util/Map;Lqf/c;)Ljava/util/ArrayList;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LD6/i;

    if-eqz v2, :cond_2d

    iget-boolean v3, v2, LD6/i;->b:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    invoke-static {v3}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_12

    iget-boolean v2, v2, LD6/i;->c:Z

    if-nez v2, :cond_12

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_47
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_56
    :goto_56
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Lqf/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_73
    return-object v0
.end method

.method public static U(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;
    .registers 10

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "r"

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_13

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_48

    :cond_12
    return-object v0

    :cond_13
    :try_start_13
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_33

    :try_start_1c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_35

    :try_start_2c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_33

    :try_start_2f
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_48

    return-object v1

    :catchall_33
    move-exception p1

    goto :goto_3f

    :catchall_35
    move-exception v1

    :try_start_36
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception p1

    :try_start_3b
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3e
    throw v1
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_33

    :goto_3f
    :try_start_3f
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p0

    :try_start_44
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_47
    throw p1
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_48} :catch_48

    :catch_48
    return-object v0
.end method

.method public static final V(LXf/q;Ljava/lang/String;Lqf/c;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ifZero"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LXf/b;

    if-eqz v0, :cond_35

    check-cast p0, LXf/b;

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lkotlin/jvm/internal/C;->d(ILjava/lang/Object;)V

    invoke-interface {p0}, LXf/b;->d()Ln7/g;

    move-result-object v0

    invoke-interface {p0}, LXf/b;->i()LXf/b;

    move-result-object p0

    invoke-interface {p2, p0}, Lqf/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, LXf/b;->d()Ln7/g;

    move-result-object p0

    new-instance p2, LZf/f;

    iget-object p0, p0, Ln7/g;->Y:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-direct {p2, p0}, LZf/f;-><init>(Ljava/util/ArrayList;)V

    new-instance p0, LZf/p;

    invoke-direct {p0, p1, p2}, LZf/p;-><init>(Ljava/lang/String;LZf/f;)V

    invoke-virtual {v0, p0}, Ln7/g;->t(LZf/k;)V

    return-void

    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "impossible"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static W(Ljava/lang/String;)LL/a;
    .registers 6

    const-string v0, "markdown"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lzf/s;->S0(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lbf/v;->k0(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lzf/s;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_30
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_39

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_50
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    sget-object v2, Lbf/C;->x:Lbf/C;

    if-eqz v0, :cond_5e

    new-instance p0, LL/a;

    invoke-direct {p0, v2, v2}, LL/a;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0

    :cond_5e
    invoke-static {p0}, Lbf/u;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_68

    const-string v0, ""

    :cond_68
    invoke-static {v0}, LU9/c;->X(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_77

    invoke-static {p0, v4}, Lbf/u;->D0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    :cond_77
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lbf/v;->k0(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_84
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, LU9/c;->X(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_98
    new-instance v1, LL/a;

    invoke-direct {v1, v0, p0}, LL/a;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public static X(Ljava/lang/String;)Ljava/util/List;
    .registers 5

    const/16 v0, 0x7c

    const/4 v1, 0x1

    new-array v2, v1, [C

    const/4 v3, 0x0

    aput-char v0, v2, v3

    invoke-static {p0, v2}, Lzf/s;->o1(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzf/s;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1d

    sget-object p0, Lbf/C;->x:Lbf/C;

    return-object p0

    :cond_1d
    new-array v1, v1, [C

    aput-char v0, v1, v3

    const/4 v0, 0x6

    invoke-static {p0, v1, v0}, Lzf/s;->b1(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lbf/v;->k0(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_35
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lzf/s;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_4d
    return-object v0
.end method

.method public static final Y(Lig/c;Ljava/lang/String;)Laf/l;
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "payload"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, LU/p1;->Companion:LU/o1;

    invoke-virtual {v2}, LU/o1;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, v2}, Lig/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU/p1;

    iget-object v2, v2, LU/p1;->c:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_3b9

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "toLowerCase(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xa

    const-string v6, "id"

    const-string v7, "<this>"

    sparse-switch v4, :sswitch_data_3ba

    goto/16 :goto_2b2

    :sswitch_36
    const-string v4, "sportsboxscorecard"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto/16 :goto_2b2

    :cond_40
    sget-object v2, LU/m1;->Companion:LU/l1;

    invoke-virtual {v2}, LU/l1;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, v2}, Lig/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU/m1;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v0, LU/m1;->a:Ljava/lang/String;

    invoke-static {v9, v6}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, LU/m1;->f:LU/o;

    iget-object v2, v1, LU/o;->c:LU/i;

    iget-object v12, v2, LU/i;->a:Ljava/lang/String;

    iget-object v4, v2, LU/i;->c:LU/l;

    invoke-static {v4, v3}, LU9/c;->g0(LU/l;Ljava/lang/String;)Ls/e0;

    move-result-object v14

    iget-object v4, v1, LU/o;->c:LU/i;

    iget-object v5, v4, LU/i;->d:LU/l;

    invoke-static {v5, v3}, LU9/c;->g0(LU/l;Ljava/lang/String;)Ls/e0;

    move-result-object v15

    iget-object v1, v1, LU/o;->b:LU/s1;

    iget-object v3, v1, LU/s1;->a:Ljava/lang/String;

    new-instance v5, Ls/f0;

    iget-object v13, v2, LU/i;->b:Ljava/lang/String;

    iget-object v1, v1, LU/s1;->b:Ljava/lang/String;

    iget-object v10, v0, LU/m1;->b:Ljava/lang/String;

    iget-object v11, v0, LU/m1;->d:Ljava/lang/String;

    iget-object v0, v4, LU/i;->e:Ljava/lang/String;

    move-object v8, v5

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    invoke-direct/range {v8 .. v18}, Ls/f0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls/e0;Ls/e0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3aa

    :sswitch_86
    const-string v4, "sportsteamcard"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    goto/16 :goto_2b2

    :cond_90
    sget-object v2, LU/H1;->Companion:LU/G1;

    invoke-virtual {v2}, LU/G1;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, v2}, Lig/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU/H1;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ls/Q0;

    iget-object v2, v0, LU/H1;->f:LU/o2;

    iget-object v4, v2, LU/o2;->c:LU/f2;

    iget-object v4, v4, LU/f2;->a:LU/c2;

    iget-object v7, v4, LU/c2;->a:Ljava/lang/String;

    iget-object v8, v4, LU/c2;->d:Ljava/lang/String;

    iget-object v9, v4, LU/c2;->e:Ljava/lang/String;

    iget-object v4, v4, LU/c2;->b:Ljava/lang/String;

    invoke-direct {v1, v7, v4, v8, v9}, Ls/Q0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, LU/o2;->c:LU/f2;

    iget-object v7, v4, LU/f2;->f:LU/R0;

    if-eqz v7, :cond_bd

    iget-object v7, v7, LU/R0;->b:Ljava/util/List;

    goto :goto_be

    :cond_bd
    move-object v7, v3

    :goto_be
    sget-object v8, Lbf/C;->x:Lbf/C;

    if-nez v7, :cond_c3

    move-object v7, v8

    :cond_c3
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7, v5}, Lbf/v;->k0(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ed

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LU/U0;

    new-instance v10, Ls/Q0;

    iget-object v11, v9, LU/U0;->b:Ljava/lang/String;

    iget-object v12, v9, LU/U0;->d:Ljava/lang/String;

    iget-object v13, v9, LU/U0;->c:Ljava/lang/String;

    iget-object v9, v9, LU/U0;->e:Ljava/lang/String;

    invoke-direct {v10, v11, v13, v9, v12}, Ls/Q0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    :cond_ed
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/J1;->T(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v8, v1}, Lbf/u;->U0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v24

    iget-object v10, v0, LU/H1;->a:Ljava/lang/String;

    invoke-static {v10, v6}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v4, LU/f2;->a:LU/c2;

    iget-object v13, v1, LU/c2;->a:Ljava/lang/String;

    iget-object v2, v2, LU/o2;->b:LU/s1;

    iget-object v6, v2, LU/s1;->a:Ljava/lang/String;

    iget-object v7, v0, LU/H1;->e:LU/j1;

    if-eqz v7, :cond_10b

    iget-object v8, v7, LU/j1;->a:Ljava/lang/String;

    move-object/from16 v18, v8

    goto :goto_10d

    :cond_10b
    move-object/from16 v18, v3

    :goto_10d
    if-eqz v7, :cond_111

    iget-object v3, v7, LU/j1;->b:Ljava/lang/String;

    :cond_111
    move-object/from16 v19, v3

    iget-object v3, v4, LU/f2;->b:LU/l2;

    iget-object v7, v3, LU/l2;->b:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v4, LU/f2;->c:Ljava/util/List;

    invoke-static {v9, v5}, Lbf/v;->k0(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_126
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LU/l2;

    new-instance v11, Ls/N0;

    iget-object v12, v9, LU/l2;->a:Ljava/lang/String;

    iget-object v9, v9, LU/l2;->b:Ljava/lang/String;

    invoke-direct {v11, v12, v9}, Ls/N0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_126

    :cond_13f
    iget-object v4, v4, LU/f2;->d:LU/l2;

    iget-object v4, v4, LU/l2;->b:Ljava/lang/String;

    new-instance v5, Ls/R0;

    iget-object v2, v2, LU/s1;->b:Ljava/lang/String;

    iget-object v3, v3, LU/l2;->a:Ljava/lang/String;

    iget-object v11, v0, LU/H1;->b:Ljava/lang/String;

    iget-object v12, v0, LU/H1;->d:Ljava/lang/String;

    iget-object v14, v1, LU/c2;->b:Ljava/lang/String;

    iget-object v15, v1, LU/c2;->e:Ljava/lang/String;

    move-object v9, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v2

    move-object/from16 v20, v7

    move-object/from16 v21, v3

    move-object/from16 v22, v8

    move-object/from16 v23, v4

    invoke-direct/range {v9 .. v24}, Ls/R0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_3aa

    :sswitch_163
    const-string v4, "sportsschedulecard"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16d

    goto/16 :goto_2b2

    :cond_16d
    sget-object v2, LU/y1;->Companion:LU/x1;

    invoke-virtual {v2}, LU/x1;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, v2}, Lig/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU/y1;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v0, LU/y1;->a:Ljava/lang/String;

    invoke-static {v9, v6}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, LU/y1;->f:LU/d1;

    iget-object v2, v1, LU/d1;->c:LU/X0;

    iget-object v2, v2, LU/X0;->a:Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lbf/v;->k0(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_196
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1aa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LU/a1;

    invoke-static {v4, v3, v3}, LU9/c;->j0(LU/a1;Ljava/lang/String;Ljava/lang/String;)Ls/s0;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_196

    :cond_1aa
    iget-object v2, v1, LU/d1;->c:LU/X0;

    iget-object v2, v2, LU/X0;->b:Ljava/util/List;

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lbf/v;->k0(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1bb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1cf

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LU/a1;

    invoke-static {v4, v3, v3}, LU9/c;->j0(LU/a1;Ljava/lang/String;Ljava/lang/String;)Ls/s0;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1bb

    :cond_1cf
    iget-object v1, v1, LU/d1;->b:LU/s1;

    iget-object v12, v1, LU/s1;->a:Ljava/lang/String;

    new-instance v5, Ls/w0;

    iget-object v11, v0, LU/y1;->d:Ljava/lang/String;

    iget-object v13, v1, LU/s1;->b:Ljava/lang/String;

    iget-object v10, v0, LU/y1;->b:Ljava/lang/String;

    move-object v8, v5

    invoke-direct/range {v8 .. v15}, Ls/w0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_3aa

    :sswitch_1e1
    const-string v4, "sportsstandingscard"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1eb

    goto/16 :goto_2b2

    :cond_1eb
    sget-object v2, LU/B1;->Companion:LU/A1;

    invoke-virtual {v2}, LU/A1;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, v2}, Lig/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU/B1;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v0, LU/B1;->a:Ljava/lang/String;

    invoke-static {v9, v6}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, LU/B1;->f:LU/Q1;

    iget-object v2, v1, LU/Q1;->b:LU/s1;

    iget-object v12, v2, LU/s1;->a:Ljava/lang/String;

    iget-object v4, v0, LU/B1;->e:LU/j1;

    if-eqz v4, :cond_20d

    iget-object v3, v4, LU/j1;->a:Ljava/lang/String;

    :cond_20d
    move-object v14, v3

    new-instance v15, Ljava/util/ArrayList;

    iget-object v1, v1, LU/Q1;->c:Ljava/util/List;

    invoke-static {v1, v5}, Lbf/v;->k0(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_260

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LU/K1;

    iget-object v4, v3, LU/K1;->a:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v3, LU/K1;->b:Ljava/util/List;

    invoke-static {v7, v5}, Lbf/v;->k0(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_23a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_255

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LU/N1;

    new-instance v10, Ls/E0;

    iget-object v11, v8, LU/N1;->a:Ljava/lang/String;

    iget-object v13, v8, LU/N1;->b:Ljava/lang/String;

    iget-object v8, v8, LU/N1;->c:Ljava/lang/String;

    invoke-direct {v10, v11, v13, v8}, Ls/E0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23a

    :cond_255
    new-instance v7, Ls/B0;

    iget-object v3, v3, LU/K1;->c:Ljava/lang/String;

    invoke-direct {v7, v4, v3, v6}, Ls/B0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21d

    :cond_260
    new-instance v5, Ls/F0;

    iget-object v10, v0, LU/B1;->b:Ljava/lang/String;

    iget-object v13, v2, LU/s1;->b:Ljava/lang/String;

    iget-object v11, v0, LU/B1;->d:Ljava/lang/String;

    move-object v8, v5

    invoke-direct/range {v8 .. v15}, Ls/F0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_3aa

    :sswitch_26e
    const-string v4, "sportsstatscard"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_277

    goto :goto_2b2

    :cond_277
    sget-object v2, LU/E1;->Companion:LU/D1;

    invoke-virtual {v2}, LU/D1;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, v2}, Lig/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU/E1;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ls/I0;

    iget-object v9, v0, LU/E1;->a:Ljava/lang/String;

    invoke-static {v9, v6}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, LU/E1;->f:LU/T1;

    iget-object v2, v1, LU/T1;->b:LU/s1;

    iget-object v12, v2, LU/s1;->a:Ljava/lang/String;

    iget-object v4, v0, LU/E1;->e:LU/j1;

    if-eqz v4, :cond_29b

    iget-object v3, v4, LU/j1;->a:Ljava/lang/String;

    :cond_29b
    move-object v14, v3

    iget-object v13, v2, LU/s1;->b:Ljava/lang/String;

    iget-object v15, v1, LU/T1;->c:Ljava/lang/String;

    iget-object v10, v0, LU/E1;->b:Ljava/lang/String;

    iget-object v11, v0, LU/E1;->d:Ljava/lang/String;

    move-object v8, v5

    invoke-direct/range {v8 .. v15}, Ls/I0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3aa

    :sswitch_2aa
    const-string v4, "sportsplayercard"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b3

    :goto_2b2
    return-object v3

    :cond_2b3
    sget-object v2, LU/v1;->Companion:LU/u1;

    invoke-virtual {v2}, LU/u1;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, v2}, Lig/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU/v1;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v0, LU/v1;->a:Ljava/lang/String;

    invoke-static {v9, v6}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, LU/v1;->f:LU/I0;

    iget-object v2, v1, LU/I0;->c:LU/C0;

    iget-object v2, v2, LU/C0;->a:LU/z0;

    iget-object v12, v2, LU/z0;->a:Ljava/lang/String;

    iget-object v4, v2, LU/z0;->k:LU/F0;

    if-eqz v4, :cond_2d9

    iget-object v4, v4, LU/F0;->a:Ljava/lang/String;

    move-object v13, v4

    goto :goto_2da

    :cond_2d9
    move-object v13, v3

    :goto_2da
    iget-object v4, v2, LU/z0;->d:Ljava/lang/Integer;

    if-eqz v4, :cond_2e5

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    goto :goto_2e7

    :cond_2e5
    move-object/from16 v16, v3

    :goto_2e7
    iget-object v4, v1, LU/I0;->c:LU/C0;

    iget-object v6, v4, LU/C0;->a:LU/z0;

    iget-object v7, v6, LU/z0;->e:Ljava/lang/String;

    iget-object v1, v1, LU/I0;->b:LU/s1;

    iget-object v15, v1, LU/s1;->a:Ljava/lang/String;

    iget-object v8, v0, LU/v1;->e:LU/j1;

    if-eqz v8, :cond_2f7

    iget-object v3, v8, LU/j1;->a:Ljava/lang/String;

    :cond_2f7
    move-object/from16 v25, v3

    new-instance v3, Ljava/util/ArrayList;

    iget-object v8, v4, LU/C0;->b:Ljava/util/List;

    invoke-static {v8, v5}, Lbf/v;->k0(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_308
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_321

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LU/l2;

    new-instance v11, Ls/m0;

    iget-object v14, v10, LU/l2;->a:Ljava/lang/String;

    iget-object v10, v10, LU/l2;->b:Ljava/lang/String;

    invoke-direct {v11, v14, v10}, Ls/m0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_308

    :cond_321
    new-instance v14, Ljava/util/ArrayList;

    iget-object v8, v4, LU/C0;->c:Ljava/util/List;

    invoke-static {v8, v5}, Lbf/v;->k0(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_330
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_34b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LU/l2;

    new-instance v11, Ls/m0;

    iget-object v5, v10, LU/l2;->a:Ljava/lang/String;

    iget-object v10, v10, LU/l2;->b:Ljava/lang/String;

    invoke-direct {v11, v5, v10}, Ls/m0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xa

    goto :goto_330

    :cond_34b
    new-instance v5, Ljava/util/ArrayList;

    iget-object v4, v4, LU/C0;->d:Ljava/util/List;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lbf/v;->k0(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_35c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_375

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LU/l2;

    new-instance v10, Ls/m0;

    iget-object v11, v8, LU/l2;->a:Ljava/lang/String;

    iget-object v8, v8, LU/l2;->b:Ljava/lang/String;

    invoke-direct {v10, v11, v8}, Ls/m0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35c

    :cond_375
    new-instance v4, Ls/n0;

    move-object v8, v4

    iget-object v10, v6, LU/z0;->j:Ljava/lang/String;

    move-object/from16 v22, v10

    iget-object v1, v1, LU/s1;->b:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v10, v0, LU/v1;->b:Ljava/lang/String;

    iget-object v11, v0, LU/v1;->d:Ljava/lang/String;

    iget-object v0, v2, LU/z0;->b:Ljava/lang/String;

    move-object v1, v14

    move-object v14, v0

    iget-object v0, v2, LU/z0;->c:Ljava/lang/String;

    move-object v2, v15

    move-object v15, v0

    iget-object v0, v6, LU/z0;->f:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v6, LU/z0;->g:Ljava/lang/Double;

    move-object/from16 v19, v0

    iget-object v0, v6, LU/z0;->h:Ljava/lang/Double;

    move-object/from16 v20, v0

    iget-object v0, v6, LU/z0;->i:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v17, v7

    move-object/from16 v23, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v1

    move-object/from16 v28, v5

    invoke-direct/range {v8 .. v28}, Ls/n0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v5, v4

    :goto_3aa
    invoke-interface {v5}, Ls/b1;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ls/e1;

    invoke-direct {v1, v0}, Ls/e1;-><init>(Ljava/lang/String;)V

    new-instance v0, Laf/l;

    invoke-direct {v0, v1, v5}, Laf/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3b9
    return-object v3

    :sswitch_data_3ba
    .sparse-switch
        -0x59c98dd0 -> :sswitch_2aa
        -0x4064f070 -> :sswitch_26e
        -0x71dc3e8 -> :sswitch_1e1
        0x2c756b26 -> :sswitch_163
        0x5c6a1f6c -> :sswitch_86
        0x69ad7836 -> :sswitch_36
    .end sparse-switch
.end method

.method public static final Z(Lcom/google/firebase/messaging/r;Landroid/util/SparseArray;)V
    .registers 7

    iget-object v0, p0, Lcom/google/firebase/messaging/r;->Y:Ljava/lang/Object;

    check-cast v0, Lf4/j;

    iget-object v0, v0, Lf4/j;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_6f

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/messaging/r;->Y:Ljava/lang/Object;

    check-cast v3, Lf4/j;

    iget-object v3, v3, Lf4/j;->a:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3c

    goto :goto_54

    :cond_3c
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_42
    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v2

    if-nez v2, :cond_67

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isToggle()Z

    move-result v2

    if-nez v2, :cond_57

    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_57
    new-instance p0, Laf/k;

    const-string p1, "An operation is not implemented: b/138604541:  Add onFill() callback for toggle"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5f
    new-instance p0, Laf/k;

    const-string p1, "An operation is not implemented: b/138604541: Add onFill() callback for list"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_67
    new-instance p0, Laf/k;

    const-string p1, "An operation is not implemented: b/138604541: Add onFill() callback for date"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6f
    return-void
.end method

.method public static final a(Lqf/a;FLS3/o;I)V
    .registers 24

    move-object/from16 v15, p0

    move/from16 v14, p1

    move/from16 v13, p3

    move-object/from16 v12, p2

    check-cast v12, LS3/t;

    const v0, -0x5fad0588

    invoke-virtual {v12, v0}, LS3/t;->b0(I)LS3/t;

    and-int/lit8 v0, v13, 0x6

    if-nez v0, :cond_1f

    invoke-virtual {v12, v15}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x4

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x2

    :goto_1d
    or-int/2addr v0, v13

    goto :goto_20

    :cond_1f
    move v0, v13

    :goto_20
    and-int/lit8 v1, v13, 0x30

    if-nez v1, :cond_30

    invoke-virtual {v12, v14}, LS3/t;->d(F)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/16 v1, 0x20

    goto :goto_2f

    :cond_2d
    const/16 v1, 0x10

    :goto_2f
    or-int/2addr v0, v1

    :cond_30
    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    if-ne v1, v2, :cond_43

    invoke-virtual {v12}, LS3/t;->B()Z

    move-result v1

    if-nez v1, :cond_3d

    goto :goto_43

    :cond_3d
    invoke-virtual {v12}, LS3/t;->S()V

    move-object v1, v12

    goto/16 :goto_133

    :cond_43
    :goto_43
    sget-object v1, Le4/t;->Companion:Le4/q;

    invoke-static {v1, v14}, Landroidx/compose/foundation/layout/d;->e(Le4/t;F)Le4/t;

    move-result-object v2

    invoke-static {v12}, LQc/e;->g(LS3/o;)F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/16 v7, 0xd

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/c;->o(Le4/t;FFFFI)Le4/t;

    move-result-object v2

    sget-object v3, Le4/e;->Companion:Le4/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Le4/c;->b:Le4/j;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lm3/s;->d(Le4/e;Z)LC4/k0;

    move-result-object v3

    iget-wide v4, v12, LS3/t;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v12}, LS3/t;->m()LS3/A0;

    move-result-object v5

    invoke-static {v12, v2}, Lra/b;->q0(LS3/o;Le4/t;)Le4/t;

    move-result-object v2

    sget-object v6, LE4/l;->Companion:LE4/k;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, LE4/k;->b:LE4/j;

    invoke-virtual {v12}, LS3/t;->d0()V

    iget-boolean v7, v12, LS3/t;->S:Z

    if-eqz v7, :cond_82

    invoke-virtual {v12, v6}, LS3/t;->l(Lqf/a;)V

    goto :goto_85

    :cond_82
    invoke-virtual {v12}, LS3/t;->n0()V

    :goto_85
    sget-object v7, LE4/k;->f:LE4/i;

    invoke-static {v12, v3, v7}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v3, LE4/k;->e:LE4/i;

    invoke-static {v12, v5, v3}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v5, LE4/k;->g:LE4/i;

    iget-boolean v8, v12, LS3/t;->S:Z

    if-nez v8, :cond_a3

    invoke-virtual {v12}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a6

    :cond_a3
    invoke-static {v4, v12, v4, v5}, LB/D;->B(ILS3/t;ILE4/i;)V

    :cond_a6
    sget-object v4, LE4/k;->d:LE4/i;

    invoke-static {v12, v2, v4}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/d;->d(Le4/t;F)Le4/t;

    move-result-object v2

    sget-object v8, Lm3/n;->a:Lm3/i;

    sget-object v9, Le4/c;->l:Le4/i;

    const/16 v10, 0x36

    invoke-static {v8, v9, v12, v10}, Lm3/D0;->a(Lm3/j;Le4/i;LS3/o;I)Lm3/F0;

    move-result-object v8

    iget-wide v9, v12, LS3/t;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v12}, LS3/t;->m()LS3/A0;

    move-result-object v10

    invoke-static {v12, v2}, Lra/b;->q0(LS3/o;Le4/t;)Le4/t;

    move-result-object v2

    invoke-virtual {v12}, LS3/t;->d0()V

    iget-boolean v11, v12, LS3/t;->S:Z

    if-eqz v11, :cond_d4

    invoke-virtual {v12, v6}, LS3/t;->l(Lqf/a;)V

    goto :goto_d7

    :cond_d4
    invoke-virtual {v12}, LS3/t;->n0()V

    :goto_d7
    invoke-static {v12, v8, v7}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    invoke-static {v12, v10, v3}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    iget-boolean v3, v12, LS3/t;->S:Z

    if-nez v3, :cond_ef

    invoke-virtual {v12}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f2

    :cond_ef
    invoke-static {v9, v12, v9, v5}, LB/D;->B(ILS3/t;ILE4/i;)V

    :cond_f2
    invoke-static {v12, v2, v4}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v5, Lhd/a;->t:Lhd/b;

    const v2, 0x7f110041

    invoke-static {v12, v2}, Lo8/n;->S(LS3/o;I)Ljava/lang/String;

    move-result-object v6

    sget-object v2, LKd/g;->a:LKd/g;

    new-instance v3, LKd/m;

    invoke-direct {v3}, LKd/m;-><init>()V

    const/16 v4, 0x8

    int-to-float v4, v4

    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/c;->k(Le4/t;F)Le4/t;

    move-result-object v1

    and-int/lit8 v16, v0, 0xe

    const/4 v9, 0x0

    const/16 v17, 0x186

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x392

    move-object v0, v1

    move-object v1, v4

    move-object v4, v7

    move-object v7, v8

    move v8, v10

    move-object/from16 v10, p0

    move-object v11, v12

    move-object/from16 v19, v12

    move/from16 v12, v17

    move/from16 v13, v16

    move/from16 v14, v18

    invoke-static/range {v0 .. v14}, LB6/a;->f(Le4/t;Ljava/lang/String;Lsf/a;LKd/s;Ll4/u0;Lhd/b;Ljava/lang/String;La5/A;ZLl4/A;Lqf/a;LS3/o;III)V

    const/4 v0, 0x1

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, LS3/t;->q(Z)V

    invoke-virtual {v1, v0}, LS3/t;->q(Z)V

    :goto_133
    invoke-virtual {v1}, LS3/t;->s()LS3/I0;

    move-result-object v0

    if-eqz v0, :cond_144

    new-instance v1, LQ0/z;

    move/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v1, v2, v3, v15}, LQ0/z;-><init>(FILqf/a;)V

    iput-object v1, v0, LS3/I0;->d:Lqf/e;

    :cond_144
    return-void
.end method

.method public static final a0(LF3/d;)V
    .registers 5

    iget-object v0, p0, LF3/d;->Y:LG3/W;

    invoke-virtual {v0}, LG3/W;->length()I

    move-result v1

    invoke-virtual {v0}, LG3/W;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ltz v1, :cond_11

    if-ge v1, v0, :cond_11

    goto :goto_2f

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to be in [0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll3/a;->a(Ljava/lang/String;)V

    :goto_2f
    invoke-static {v1, v1}, Lbf/Q;->f(II)J

    move-result-wide v0

    iput-wide v0, p0, LF3/d;->w0:J

    return-void
.end method

.method public static final b(ZLqf/a;Lqf/a;Lqf/a;Le4/t;La4/d;LS3/o;I)V
    .registers 34

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p7

    const-string v0, "onCloseClick"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSaveClick"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onShareClick"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p6

    check-cast v0, LS3/t;

    const v5, 0x18957438

    invoke-virtual {v0, v5}, LS3/t;->b0(I)LS3/t;

    and-int/lit8 v5, v7, 0x6

    if-nez v5, :cond_34

    invoke-virtual {v0, v1}, LS3/t;->h(Z)Z

    move-result v5

    if-eqz v5, :cond_31

    const/4 v5, 0x4

    goto :goto_32

    :cond_31
    const/4 v5, 0x2

    :goto_32
    or-int/2addr v5, v7

    goto :goto_35

    :cond_34
    move v5, v7

    :goto_35
    and-int/lit8 v8, v7, 0x30

    if-nez v8, :cond_45

    invoke-virtual {v0, v2}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    const/16 v8, 0x20

    goto :goto_44

    :cond_42
    const/16 v8, 0x10

    :goto_44
    or-int/2addr v5, v8

    :cond_45
    and-int/lit16 v8, v7, 0x180

    if-nez v8, :cond_55

    invoke-virtual {v0, v3}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    const/16 v8, 0x100

    goto :goto_54

    :cond_52
    const/16 v8, 0x80

    :goto_54
    or-int/2addr v5, v8

    :cond_55
    and-int/lit16 v8, v7, 0xc00

    if-nez v8, :cond_65

    invoke-virtual {v0, v4}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    const/16 v8, 0x800

    goto :goto_64

    :cond_62
    const/16 v8, 0x400

    :goto_64
    or-int/2addr v5, v8

    :cond_65
    and-int/lit16 v8, v7, 0x6000

    if-nez v8, :cond_78

    move-object/from16 v8, p4

    invoke-virtual {v0, v8}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_74

    const/16 v9, 0x4000

    goto :goto_76

    :cond_74
    const/16 v9, 0x2000

    :goto_76
    or-int/2addr v5, v9

    goto :goto_7a

    :cond_78
    move-object/from16 v8, p4

    :goto_7a
    const/high16 v9, 0x30000

    and-int/2addr v9, v7

    if-nez v9, :cond_8b

    invoke-virtual {v0, v6}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_88

    const/high16 v9, 0x20000

    goto :goto_8a

    :cond_88
    const/high16 v9, 0x10000

    :goto_8a
    or-int/2addr v5, v9

    :cond_8b
    const v9, 0x12493

    and-int/2addr v9, v5

    const v10, 0x12492

    if-ne v9, v10, :cond_9f

    invoke-virtual {v0}, LS3/t;->B()Z

    move-result v9

    if-nez v9, :cond_9b

    goto :goto_9f

    :cond_9b
    invoke-virtual {v0}, LS3/t;->S()V

    goto :goto_e7

    :cond_9f
    :goto_9f
    new-instance v9, Lm1/j;

    invoke-direct {v9, v2, v1, v3}, Lm1/j;-><init>(Lqf/a;ZLqf/a;)V

    const v10, -0x24d1bb38

    invoke-static {v10, v9, v0}, La4/e;->e(ILaf/e;LS3/o;)La4/d;

    move-result-object v9

    new-instance v10, Lm1/j;

    invoke-direct {v10, v1, v3, v4}, Lm1/j;-><init>(ZLqf/a;Lqf/a;)V

    const v11, -0x4ec5d3f7

    invoke-static {v11, v10, v0}, La4/e;->e(ILaf/e;LS3/o;)La4/d;

    move-result-object v10

    new-instance v11, LGd/d;

    const/4 v12, 0x2

    invoke-direct {v11, v6, v12}, LGd/d;-><init>(La4/d;I)V

    const v12, -0x6375afc2

    invoke-static {v12, v11, v0}, La4/e;->e(ILaf/e;LS3/o;)La4/d;

    move-result-object v21

    shr-int/lit8 v5, v5, 0xc

    and-int/lit8 v5, v5, 0xe

    const v11, 0x1801b0

    or-int v23, v5, v11

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v24, 0xc06

    const/16 v25, 0x1bb8

    move-object/from16 v8, p4

    move-object/from16 v22, v0

    invoke-static/range {v8 .. v25}, Lcom/google/android/gms/internal/measurement/J1;->q(Le4/t;Lqf/e;Lqf/e;Lqf/e;Lqf/e;IZLqf/e;Lqf/e;Lqf/e;ZZLandroidx/lifecycle/C;La4/d;LS3/o;III)V

    :goto_e7
    invoke-virtual {v0}, LS3/t;->s()LS3/I0;

    move-result-object v8

    if-eqz v8, :cond_103

    new-instance v9, LHc/i;

    move-object v0, v9

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, LHc/i;-><init>(ZLqf/a;Lqf/a;Lqf/a;Le4/t;La4/d;I)V

    iput-object v9, v8, LS3/I0;->d:Lqf/e;

    :cond_103
    return-void
.end method

.method public static final b0(Lcom/google/firebase/messaging/r;Landroid/view/ViewStructure;)V
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/messaging/r;->Y:Ljava/lang/Object;

    check-cast v0, Lf4/j;

    iget-object v0, v0, Lf4/j;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/firebase/messaging/r;->Y:Ljava/lang/Object;

    check-cast v0, Lf4/j;

    iget-object v1, v0, Lf4/j;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->addChildCount(I)I

    move-result v1

    iget-object v0, v0, Lf4/j;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2c

    return-void

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_67

    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/messaging/r;->w0:Ljava/lang/Object;

    check-cast v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;I)V

    iget-object p0, p0, Lcom/google/firebase/messaging/r;->x:Ljava/lang/Object;

    check-cast p0, LF4/M;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v2, p0, v0, v0}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lf4/l;->Companion:Lf4/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/ViewStructure;->setAutofillType(I)V

    throw v0

    :cond_67
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static final c(Ls/g2;LS3/o;I)V
    .registers 12

    check-cast p1, LS3/t;

    const v0, 0x15f86af5

    invoke-virtual {p1, v0}, LS3/t;->b0(I)LS3/t;

    and-int/lit8 v0, p2, 0x6

    const/4 v1, 0x2

    if-nez v0, :cond_18

    invoke-virtual {p1, p0}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x4

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    or-int/2addr v0, p2

    goto :goto_19

    :cond_18
    move v0, p2

    :goto_19
    and-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_28

    invoke-virtual {p1}, LS3/t;->B()Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_28

    :cond_24
    invoke-virtual {p1}, LS3/t;->S()V

    goto :goto_40

    :cond_28
    :goto_28
    iget-object v0, p0, Ls/g2;->h:Ls/g2;

    if-eqz v0, :cond_30

    iget-object v0, v0, Ls/g2;->c:Ljava/lang/String;

    :goto_2e
    move-object v3, v0

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_2e

    :goto_32
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Ls/g2;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v7, 0x30

    const/16 v8, 0x34

    move-object v6, p1

    invoke-static/range {v0 .. v8}, LE1/d;->e(Ljava/lang/String;Ljava/lang/String;Le4/t;Ljava/lang/String;LC4/w;LAf/d;LS3/o;II)V

    :goto_40
    invoke-virtual {p1}, LS3/t;->s()LS3/I0;

    move-result-object p1

    if-eqz p1, :cond_4f

    new-instance v0, LB/l;

    const/16 v1, 0x19

    invoke-direct {v0, p0, p2, v1}, LB/l;-><init>(Ljava/lang/Object;II)V

    iput-object v0, p1, LS3/I0;->d:Lqf/e;

    :cond_4f
    return-void
.end method

.method public static final d(LNc/u;Ls/g2;ZLS3/o;I)V
    .registers 36

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    const/16 v0, 0x180

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v15, p3

    check-cast v15, LS3/t;

    const v2, 0x6c303674

    invoke-virtual {v15, v2}, LS3/t;->b0(I)LS3/t;

    and-int/lit8 v2, v12, 0x6

    if-nez v2, :cond_25

    invoke-virtual {v15, v1}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x4

    goto :goto_23

    :cond_22
    const/4 v2, 0x2

    :goto_23
    or-int/2addr v2, v12

    goto :goto_26

    :cond_25
    move v2, v12

    :goto_26
    and-int/lit8 v3, v12, 0x30

    const/16 v9, 0x20

    if-nez v3, :cond_37

    invoke-virtual {v15, v10}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    move v3, v9

    goto :goto_36

    :cond_34
    const/16 v3, 0x10

    :goto_36
    or-int/2addr v2, v3

    :cond_37
    and-int/lit16 v3, v12, 0x180

    const/16 v8, 0x100

    if-nez v3, :cond_48

    invoke-virtual {v15, v11}, LS3/t;->h(Z)Z

    move-result v3

    if-eqz v3, :cond_45

    move v3, v8

    goto :goto_47

    :cond_45
    const/16 v3, 0x80

    :goto_47
    or-int/2addr v2, v3

    :cond_48
    move v7, v2

    and-int/lit16 v2, v7, 0x93

    const/16 v3, 0x92

    if-ne v2, v3, :cond_5e

    invoke-virtual {v15}, LS3/t;->B()Z

    move-result v2

    if-nez v2, :cond_56

    goto :goto_5e

    :cond_56
    invoke-virtual {v15}, LS3/t;->S()V

    move-object v2, v10

    move-object v7, v15

    move-object v10, v1

    goto/16 :goto_560

    :cond_5e
    :goto_5e
    const v6, 0x6e3c21fe

    invoke-virtual {v15, v6}, LS3/t;->Z(I)V

    invoke-virtual {v15}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, LS3/o;->Companion:LS3/n;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, LS3/n;->b:LS3/a0;

    if-ne v2, v5, :cond_80

    iget-object v2, v10, Ls/g2;->h:Ls/g2;

    if-eqz v2, :cond_78

    iget-object v2, v2, Ls/g2;->c:Ljava/lang/String;

    goto :goto_79

    :cond_78
    const/4 v2, 0x0

    :goto_79
    invoke-static {v2}, LS3/A;->u(Ljava/lang/Object;)LS3/v0;

    move-result-object v2

    invoke-virtual {v15, v2}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_80
    move-object/from16 v16, v2

    check-cast v16, LS3/i0;

    invoke-static {v6, v15, v13}, LB/D;->h(ILS3/t;Z)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_93

    iget-object v2, v10, Ls/g2;->c:Ljava/lang/String;

    invoke-static {v2}, LS3/A;->u(Ljava/lang/Object;)LS3/v0;

    move-result-object v2

    invoke-virtual {v15, v2}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_93
    move-object/from16 v25, v2

    check-cast v25, LS3/i0;

    invoke-static {v6, v15, v13}, LB/D;->h(ILS3/t;Z)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_a7

    new-instance v2, Lo/c;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Lo/c;-><init>(I)V

    invoke-virtual {v15, v2}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_a7
    check-cast v2, Lqf/e;

    invoke-static {v6, v15, v13}, LB/D;->h(ILS3/t;Z)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_b7

    new-instance v3, Lv/i;

    invoke-direct {v3, v14}, Lv/i;-><init>(I)V

    invoke-virtual {v15, v3}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_b7
    check-cast v3, Lqf/c;

    invoke-virtual {v15, v13}, LS3/t;->q(Z)V

    new-instance v4, Lb4/l;

    invoke-direct {v4, v3, v2}, Lb4/l;-><init>(Lqf/c;Lqf/e;)V

    new-array v2, v13, [Ljava/lang/Object;

    invoke-virtual {v15, v6}, LS3/t;->Z(I)V

    invoke-virtual {v15}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_d6

    new-instance v3, Lt7/m0;

    const/16 v6, 0x9

    invoke-direct {v3, v6}, Lt7/m0;-><init>(I)V

    invoke-virtual {v15, v3}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_d6
    check-cast v3, Lqf/a;

    invoke-virtual {v15, v13}, LS3/t;->q(Z)V

    invoke-static {v2, v4, v3, v15, v0}, Lb4/m;->e([Ljava/lang/Object;Lb4/l;Lqf/a;LS3/o;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc3/e;

    iget v2, v10, Ls/g2;->d:F

    const/4 v6, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v2, v6, v4}, Lra/b;->Z(FFF)F

    move-result v3

    const v2, -0x48fade91

    invoke-virtual {v15, v2}, LS3/t;->Z(I)V

    iget-object v14, v10, Ls/g2;->c:Ljava/lang/String;

    invoke-virtual {v15, v14}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v18

    and-int/lit8 v13, v7, 0x70

    if-ne v13, v9, :cond_fd

    const/16 v19, 0x1

    goto :goto_ff

    :cond_fd
    const/16 v19, 0x0

    :goto_ff
    or-int v18, v18, v19

    invoke-virtual {v15, v3}, LS3/t;->d(F)Z

    move-result v19

    or-int v18, v18, v19

    invoke-virtual {v15, v0}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v19

    or-int v18, v18, v19

    invoke-virtual {v15}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v2

    if-nez v18, :cond_11e

    if-ne v2, v5, :cond_116

    goto :goto_11e

    :cond_116
    move/from16 v20, v3

    move-object/from16 v27, v5

    move/from16 v29, v7

    move v12, v9

    goto :goto_13e

    :cond_11e
    :goto_11e
    new-instance v2, Lv/A;

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move/from16 v20, v3

    move-object v3, v14

    move-object/from16 v4, p1

    move-object/from16 v27, v5

    move/from16 v5, v20

    move-object v6, v0

    move/from16 v29, v7

    move-object/from16 v7, v25

    move v12, v8

    move-object/from16 v8, v16

    move v12, v9

    move-object/from16 v9, v18

    invoke-direct/range {v2 .. v9}, Lv/A;-><init>(Ljava/lang/String;Ls/g2;FLc3/e;LS3/i0;LS3/i0;Lff/c;)V

    invoke-virtual {v15, v2}, LS3/t;->k0(Ljava/lang/Object;)V

    :goto_13e
    check-cast v2, Lqf/e;

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, LS3/t;->q(Z)V

    invoke-static {v15, v14, v2}, LS3/A;->f(LS3/o;Ljava/lang/Object;Lqf/e;)V

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget-boolean v8, v10, Ls/g2;->e:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const v2, -0x48fade91

    invoke-virtual {v15, v2}, LS3/t;->Z(I)V

    invoke-virtual {v15, v14}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v2

    if-ne v13, v12, :cond_15f

    const/4 v3, 0x1

    goto :goto_160

    :cond_15f
    const/4 v3, 0x0

    :goto_160
    or-int/2addr v2, v3

    move/from16 v5, v20

    invoke-virtual {v15, v5}, LS3/t;->d(F)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v15, v0}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    move/from16 v12, v29

    and-int/lit16 v3, v12, 0x380

    const/16 v4, 0x100

    if-ne v3, v4, :cond_177

    const/4 v3, 0x1

    goto :goto_178

    :cond_177
    const/4 v3, 0x0

    :goto_178
    or-int/2addr v2, v3

    invoke-virtual {v15}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v13, v27

    if-nez v2, :cond_18a

    if-ne v3, v13, :cond_184

    goto :goto_18a

    :cond_184
    move-object/from16 v30, v7

    move/from16 v26, v8

    move-object v1, v9

    goto :goto_1a6

    :cond_18a
    :goto_18a
    new-instance v6, Lv/B;

    const/16 v17, 0x0

    move-object v2, v6

    move-object v3, v14

    move-object/from16 v4, p1

    move-object v14, v6

    move-object v6, v0

    move-object/from16 v30, v7

    move/from16 v7, p2

    move/from16 v26, v8

    move-object/from16 v8, v25

    move-object v1, v9

    move-object/from16 v9, v17

    invoke-direct/range {v2 .. v9}, Lv/B;-><init>(Ljava/lang/String;Ls/g2;FLc3/e;ZLS3/i0;Lff/c;)V

    invoke-virtual {v15, v14}, LS3/t;->k0(Ljava/lang/Object;)V

    move-object v3, v14

    :goto_1a6
    check-cast v3, Lqf/e;

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, LS3/t;->q(Z)V

    move-object/from16 v2, v30

    invoke-static {v1, v2, v3, v15}, LS3/A;->h(Ljava/lang/Object;Ljava/lang/Object;Lqf/e;LS3/o;)V

    invoke-interface/range {v16 .. v16}, LS3/w1;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1c0

    invoke-static {v4}, Lzf/s;->O0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c1

    :cond_1c0
    const/4 v4, 0x0

    :cond_1c1
    const v1, 0x20fd7602

    invoke-virtual {v15, v1}, LS3/t;->Z(I)V

    if-nez v4, :cond_1cc

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_1fe

    :cond_1cc
    new-instance v1, Lc8/d;

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:LS3/x1;

    invoke-virtual {v15, v2}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lc8/d;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lc8/d;->c:Ljava/lang/Object;

    sget-object v2, Ld8/j;->c:Ld8/j;

    new-instance v3, Ld8/e;

    invoke-direct {v3, v2}, Ld8/e;-><init>(Ld8/j;)V

    iput-object v3, v1, Lc8/d;->o:Ld8/l;

    sget-object v2, Lc8/i;->a:LM7/n;

    sget-object v2, Lc8/j;->a:LM7/n;

    sget-object v2, Lf8/h;->a:Lf8/e;

    invoke-virtual {v1}, Lc8/d;->c()LM7/k;

    move-result-object v3

    iget-object v3, v3, LM7/k;->a:Ljava/util/LinkedHashMap;

    sget-object v4, Lc8/j;->a:LM7/n;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lc8/d;->a()Lc8/h;

    move-result-object v1

    invoke-static {v1, v15}, LN7/o;->f(Ljava/lang/Object;LS3/o;)LN7/m;

    move-result-object v4

    const/4 v1, 0x0

    :goto_1fe
    invoke-virtual {v15, v1}, LS3/t;->q(Z)V

    invoke-interface/range {v25 .. v25}, LS3/w1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lzf/s;->O0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20e

    goto :goto_20f

    :cond_20e
    const/4 v1, 0x0

    :goto_20f
    const v2, 0x20fd9351

    invoke-virtual {v15, v2}, LS3/t;->Z(I)V

    if-nez v1, :cond_21a

    const/4 v1, 0x0

    :goto_218
    const/4 v2, 0x0

    goto :goto_23b

    :cond_21a
    new-instance v2, Lc8/d;

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:LS3/x1;

    invoke-virtual {v15, v3}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Lc8/d;-><init>(Landroid/content/Context;)V

    iput-object v1, v2, Lc8/d;->c:Ljava/lang/Object;

    sget-object v1, Ld8/j;->c:Ld8/j;

    new-instance v3, Ld8/e;

    invoke-direct {v3, v1}, Ld8/e;-><init>(Ld8/j;)V

    iput-object v3, v2, Lc8/d;->o:Ld8/l;

    invoke-virtual {v2}, Lc8/d;->a()Lc8/h;

    move-result-object v1

    invoke-static {v1, v15}, LN7/o;->f(Ljava/lang/Object;LS3/o;)LN7/m;

    move-result-object v1

    goto :goto_218

    :goto_23b
    invoke-virtual {v15, v2}, LS3/t;->q(Z)V

    const v2, 0x20fdade0

    invoke-virtual {v15, v2}, LS3/t;->Z(I)V

    const/4 v2, 0x3

    if-eqz v11, :cond_27d

    if-eqz v26, :cond_254

    invoke-virtual {v0}, Lc3/e;->e()Z

    move-result v3

    if-eqz v3, :cond_250

    goto :goto_254

    :cond_250
    const/4 v3, 0x0

    :goto_251
    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_256

    :cond_254
    :goto_254
    const/4 v3, 0x1

    goto :goto_251

    :goto_256
    invoke-static {v5, v6, v2}, Landroidx/compose/animation/c;->f(Lc3/G;FI)Lb3/g0;

    move-result-object v17

    invoke-static {v5, v2}, Landroidx/compose/animation/c;->g(Lc3/G;I)Lb3/j0;

    move-result-object v18

    new-instance v7, Lv/C;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Lv/C;-><init>(LN7/m;I)V

    const v8, -0x364545d9

    invoke-static {v8, v7, v15}, La4/e;->e(ILaf/e;LS3/o;)La4/d;

    move-result-object v20

    const/16 v16, 0x0

    const/16 v19, 0x0

    const v22, 0x30d80

    const/16 v23, 0x12

    move-object v7, v15

    move v15, v3

    move-object/from16 v21, v7

    invoke-static/range {v15 .. v23}, LD8/f;->d(ZLe4/t;Lb3/f0;Lb3/i0;Ljava/lang/String;La4/d;LS3/o;II)V

    :goto_27b
    const/4 v3, 0x0

    goto :goto_281

    :cond_27d
    move-object v7, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_27b

    :goto_281
    invoke-virtual {v7, v3}, LS3/t;->q(Z)V

    if-eqz v1, :cond_55d

    iget-object v8, v1, LN7/m;->N0:LOf/v0;

    const/4 v9, 0x1

    invoke-static {v8, v5, v7, v3, v9}, LS3/A;->l(LOf/M0;LMf/d;LS3/o;II)LS3/i0;

    move-result-object v8

    invoke-interface {v8}, LS3/w1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN7/k;

    instance-of v3, v3, LN7/j;

    const v8, 0x6e3c21fe

    invoke-virtual {v7, v8}, LS3/t;->Z(I)V

    invoke-virtual {v7}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v13, :cond_2aa

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v9}, LS3/A;->u(Ljava/lang/Object;)LS3/v0;

    move-result-object v9

    invoke-virtual {v7, v9}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_2aa
    check-cast v9, LS3/i0;

    const/4 v14, 0x0

    invoke-static {v8, v7, v14}, LB/D;->h(ILS3/t;Z)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v13, :cond_2bc

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v8}, LS3/A;->u(Ljava/lang/Object;)LS3/v0;

    move-result-object v8

    invoke-virtual {v7, v8}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_2bc
    check-cast v8, LS3/i0;

    invoke-virtual {v7, v14}, LS3/t;->q(Z)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v9}, LS3/w1;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    const v2, -0x6815fd56

    invoke-virtual {v7, v2}, LS3/t;->Z(I)V

    invoke-virtual {v7, v3}, LS3/t;->h(Z)Z

    move-result v2

    invoke-virtual {v7}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_2e0

    if-ne v6, v13, :cond_2e8

    :cond_2e0
    new-instance v6, Lv/D;

    invoke-direct {v6, v3, v9, v8, v5}, Lv/D;-><init>(ZLS3/i0;LS3/i0;Lff/c;)V

    invoke-virtual {v7, v6}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_2e8
    check-cast v6, Lqf/e;

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, LS3/t;->q(Z)V

    invoke-static {v14, v15, v6, v7}, LS3/A;->h(Ljava/lang/Object;Ljava/lang/Object;Lqf/e;LS3/o;)V

    const v2, 0x20fe59a1

    invoke-virtual {v7, v2}, LS3/t;->Z(I)V

    sget-object v2, LC4/v;->c:LC4/u;

    sget-object v6, Le4/c;->b:Le4/j;

    if-eqz v11, :cond_42c

    sget-object v15, Le4/t;->Companion:Le4/q;

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-static {v15, v5}, Landroidx/compose/foundation/layout/d;->c(Le4/t;F)Le4/t;

    move-result-object v14

    const/16 v5, 0x28

    int-to-float v5, v5

    invoke-static {v14, v5}, Lf7/v;->C(Le4/t;F)Le4/t;

    move-result-object v5

    sget-object v14, Le4/e;->Companion:Le4/c;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v14, 0x0

    invoke-static {v6, v14}, Lm3/s;->d(Le4/e;Z)LC4/k0;

    move-result-object v11

    move-object v14, v1

    move-object/from16 v28, v2

    iget-wide v1, v7, LS3/t;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v7}, LS3/t;->m()LS3/A0;

    move-result-object v2

    invoke-static {v7, v5}, Lra/b;->q0(LS3/o;Le4/t;)Le4/t;

    move-result-object v5

    sget-object v16, LE4/l;->Companion:LE4/k;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v29, v12

    sget-object v12, LE4/k;->b:LE4/j;

    invoke-virtual {v7}, LS3/t;->d0()V

    iget-boolean v10, v7, LS3/t;->S:Z

    if-eqz v10, :cond_33b

    invoke-virtual {v7, v12}, LS3/t;->l(Lqf/a;)V

    goto :goto_33e

    :cond_33b
    invoke-virtual {v7}, LS3/t;->n0()V

    :goto_33e
    sget-object v10, LE4/k;->f:LE4/i;

    invoke-static {v7, v11, v10}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v10, LE4/k;->e:LE4/i;

    invoke-static {v7, v2, v10}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v2, LE4/k;->g:LE4/i;

    iget-boolean v10, v7, LS3/t;->S:Z

    if-nez v10, :cond_35c

    invoke-virtual {v7}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_35f

    :cond_35c
    invoke-static {v1, v7, v1, v2}, LB/D;->B(ILS3/t;ILE4/i;)V

    :cond_35f
    sget-object v1, LE4/k;->d:LE4/i;

    invoke-static {v7, v5, v1}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    const v1, 0x60c8f630

    invoke-virtual {v7, v1}, LS3/t;->Z(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_3ed

    sget-object v1, LC4/w;->Companion:LC4/v;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v15, v1}, Landroidx/compose/foundation/layout/d;->c(Le4/t;F)Le4/t;

    move-result-object v2

    invoke-interface {v8}, LS3/w1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_38a

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_38b

    :cond_38a
    const/4 v1, 0x0

    :goto_38b
    invoke-static {v2, v1}, LD8/f;->s(Le4/t;F)Le4/t;

    move-result-object v1

    const v2, -0x615d173a

    invoke-virtual {v7, v2}, LS3/t;->Z(I)V

    invoke-virtual {v7, v0}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v7}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_3a1

    if-ne v5, v13, :cond_3aa

    :cond_3a1
    new-instance v5, Lv/y;

    const/4 v2, 0x1

    invoke-direct {v5, v0, v8, v2}, Lv/y;-><init>(Lc3/e;LS3/i0;I)V

    invoke-virtual {v7, v5}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_3aa
    check-cast v5, Lqf/c;

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, LS3/t;->q(Z)V

    invoke-static {v1, v5}, Landroidx/compose/ui/draw/a;->c(Le4/t;Lqf/c;)Le4/t;

    move-result-object v1

    const v2, -0x615d173a

    invoke-virtual {v7, v2}, LS3/t;->Z(I)V

    invoke-virtual {v7, v3}, LS3/t;->h(Z)Z

    move-result v2

    invoke-virtual {v7}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_3c6

    if-ne v5, v13, :cond_3cf

    :cond_3c6
    new-instance v5, Lv/z;

    const/4 v2, 0x1

    invoke-direct {v5, v3, v9, v2}, Lv/z;-><init>(ZLS3/i0;I)V

    invoke-virtual {v7, v5}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_3cf
    check-cast v5, Lqf/c;

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, LS3/t;->q(Z)V

    invoke-static {v1, v5}, Landroidx/compose/ui/layout/a;->d(Le4/t;Lqf/c;)Le4/t;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x6c30

    const/16 v24, 0x60

    move-object v15, v14

    move-object/from16 v18, v6

    move-object/from16 v19, v28

    move-object/from16 v22, v7

    invoke-static/range {v15 .. v24}, Lcom/google/android/gms/internal/measurement/f2;->f(Lq4/d;Ljava/lang/String;Le4/t;Le4/e;LC4/w;FLl4/C;LS3/o;II)V

    :cond_3ed
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, LS3/t;->q(Z)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, LS3/t;->q(Z)V

    if-eqz v26, :cond_403

    invoke-virtual {v0}, Lc3/e;->e()Z

    move-result v1

    if-eqz v1, :cond_3fe

    goto :goto_403

    :cond_3fe
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v15, 0x0

    goto :goto_407

    :cond_403
    :goto_403
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v15, 0x1

    :goto_407
    invoke-static {v1, v2, v5}, Landroidx/compose/animation/c;->f(Lc3/G;FI)Lb3/g0;

    move-result-object v17

    invoke-static {v1, v5}, Landroidx/compose/animation/c;->g(Lc3/G;I)Lb3/j0;

    move-result-object v18

    new-instance v1, Lv/C;

    const/4 v2, 0x1

    invoke-direct {v1, v4, v2}, Lv/C;-><init>(LN7/m;I)V

    const v2, -0x69ec7987

    invoke-static {v2, v1, v7}, La4/e;->e(ILaf/e;LS3/o;)La4/d;

    move-result-object v20

    const/16 v16, 0x0

    const/16 v19, 0x0

    const v22, 0x30d80

    const/16 v23, 0x12

    move-object/from16 v21, v7

    invoke-static/range {v15 .. v23}, LD8/f;->d(ZLe4/t;Lb3/f0;Lb3/i0;Ljava/lang/String;La4/d;LS3/o;II)V

    :goto_42a
    const/4 v1, 0x0

    goto :goto_432

    :cond_42c
    move-object v14, v1

    move-object/from16 v28, v2

    move/from16 v29, v12

    goto :goto_42a

    :goto_432
    invoke-virtual {v7, v1}, LS3/t;->q(Z)V

    sget-object v1, Le4/t;->Companion:Le4/q;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/d;->c(Le4/t;F)Le4/t;

    move-result-object v4

    move-object/from16 v2, p1

    iget-boolean v5, v2, Ls/g2;->f:Z

    if-eqz v5, :cond_44a

    const/16 v5, 0x50

    int-to-float v5, v5

    invoke-static {v4, v5}, Lf7/v;->C(Le4/t;F)Le4/t;

    move-result-object v4

    :cond_44a
    sget-object v5, Le4/e;->Companion:Le4/c;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-static {v6, v5}, Lm3/s;->d(Le4/e;Z)LC4/k0;

    move-result-object v10

    iget-wide v11, v7, LS3/t;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v7}, LS3/t;->m()LS3/A0;

    move-result-object v11

    invoke-static {v7, v4}, Lra/b;->q0(LS3/o;Le4/t;)Le4/t;

    move-result-object v4

    sget-object v12, LE4/l;->Companion:LE4/k;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, LE4/k;->b:LE4/j;

    invoke-virtual {v7}, LS3/t;->d0()V

    iget-boolean v15, v7, LS3/t;->S:Z

    if-eqz v15, :cond_474

    invoke-virtual {v7, v12}, LS3/t;->l(Lqf/a;)V

    goto :goto_477

    :cond_474
    invoke-virtual {v7}, LS3/t;->n0()V

    :goto_477
    sget-object v12, LE4/k;->f:LE4/i;

    invoke-static {v7, v10, v12}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v10, LE4/k;->e:LE4/i;

    invoke-static {v7, v11, v10}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v10, LE4/k;->g:LE4/i;

    iget-boolean v11, v7, LS3/t;->S:Z

    if-nez v11, :cond_495

    invoke-virtual {v7}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_498

    :cond_495
    invoke-static {v5, v7, v5, v10}, LB/D;->B(ILS3/t;ILE4/i;)V

    :cond_498
    sget-object v5, LE4/k;->d:LE4/i;

    invoke-static {v7, v4, v5}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    const v4, 0xa461b09

    invoke-virtual {v7, v4}, LS3/t;->Z(I)V

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v5, "robolectric"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b1

    const/4 v4, 0x0

    move-object/from16 v10, p0

    goto :goto_4da

    :cond_4b1
    iget-object v4, v2, Ls/g2;->a:Ln1/i;

    if-eqz v4, :cond_4bc

    iget-object v4, v4, Ln1/i;->f:Ljava/lang/String;

    if-nez v4, :cond_4ba

    goto :goto_4bc

    :cond_4ba
    :goto_4ba
    const/4 v5, 0x3

    goto :goto_4c9

    :cond_4bc
    :goto_4bc
    invoke-interface/range {v25 .. v25}, LS3/w1;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "media_"

    invoke-static {v5, v4}, Lb/b;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4ba

    :goto_4c9
    shl-int/lit8 v5, v29, 0x3

    and-int/lit8 v5, v5, 0x70

    move-object/from16 v10, p0

    invoke-virtual {v10, v4, v7, v5}, LNc/u;->d(Ljava/lang/Object;LS3/o;I)Lb3/C0;

    move-result-object v4

    const/16 v5, 0x7e

    invoke-static {v10, v1, v4, v5}, LNc/u;->h(LNc/u;Le4/t;Lb3/C0;I)Le4/t;

    move-result-object v1

    const/4 v4, 0x0

    :goto_4da
    invoke-virtual {v7, v4}, LS3/t;->q(Z)V

    sget-object v4, LC4/w;->Companion:LC4/v;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/d;->c(Le4/t;F)Le4/t;

    move-result-object v1

    const v4, -0x615d173a

    invoke-virtual {v7, v4}, LS3/t;->Z(I)V

    invoke-virtual {v7, v0}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v7}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_4fd

    if-ne v5, v13, :cond_4fb

    goto :goto_4fd

    :cond_4fb
    const/4 v4, 0x0

    goto :goto_506

    :cond_4fd
    :goto_4fd
    new-instance v5, Lv/y;

    const/4 v4, 0x0

    invoke-direct {v5, v0, v8, v4}, Lv/y;-><init>(Lc3/e;LS3/i0;I)V

    invoke-virtual {v7, v5}, LS3/t;->k0(Ljava/lang/Object;)V

    :goto_506
    check-cast v5, Lqf/c;

    invoke-virtual {v7, v4}, LS3/t;->q(Z)V

    invoke-static {v1, v5}, Landroidx/compose/ui/draw/a;->c(Le4/t;Lqf/c;)Le4/t;

    move-result-object v0

    const v1, -0x615d173a

    invoke-virtual {v7, v1}, LS3/t;->Z(I)V

    invoke-virtual {v7, v3}, LS3/t;->h(Z)Z

    move-result v1

    invoke-virtual {v7}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_524

    if-ne v4, v13, :cond_522

    goto :goto_524

    :cond_522
    const/4 v1, 0x0

    goto :goto_52d

    :cond_524
    :goto_524
    new-instance v4, Lv/z;

    const/4 v1, 0x0

    invoke-direct {v4, v3, v9, v1}, Lv/z;-><init>(ZLS3/i0;I)V

    invoke-virtual {v7, v4}, LS3/t;->k0(Ljava/lang/Object;)V

    :goto_52d
    check-cast v4, Lqf/c;

    invoke-virtual {v7, v1}, LS3/t;->q(Z)V

    invoke-static {v0, v4}, Landroidx/compose/ui/layout/a;->d(Le4/t;Lqf/c;)Le4/t;

    move-result-object v0

    sget-object v1, LO3/x4;->a:LS3/x1;

    invoke-virtual {v7, v1}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO3/w4;

    iget-object v1, v1, LO3/w4;->d:Lv3/a;

    invoke-static {v0, v1}, LHa/v0;->C(Le4/t;Ll4/u0;)Le4/t;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x6c30

    const/16 v24, 0x60

    move-object v15, v14

    move-object/from16 v18, v6

    move-object/from16 v19, v28

    move-object/from16 v22, v7

    invoke-static/range {v15 .. v24}, Lcom/google/android/gms/internal/measurement/f2;->f(Lq4/d;Ljava/lang/String;Le4/t;Le4/e;LC4/w;FLl4/C;LS3/o;II)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, LS3/t;->q(Z)V

    goto :goto_560

    :cond_55d
    move-object v2, v10

    move-object/from16 v10, p0

    :goto_560
    invoke-virtual {v7}, LS3/t;->s()LS3/I0;

    move-result-object v6

    if-eqz v6, :cond_578

    new-instance v7, LC1/s;

    const/16 v5, 0xb

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, LC1/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZII)V

    iput-object v7, v6, LS3/I0;->d:Lqf/e;

    :cond_578
    return-void
.end method

.method public static final e(LNc/u;Ljava/util/List;ZFILe4/t;Lqf/e;ZLS3/o;I)V
    .registers 38

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p9

    const-string v0, "<this>"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrls"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v15, p8

    check-cast v15, LS3/t;

    const v0, -0xc253520

    invoke-virtual {v15, v0}, LS3/t;->b0(I)LS3/t;

    and-int/lit8 v0, v14, 0x6

    if-nez v0, :cond_2d

    invoke-virtual {v15, v10}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x4

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x2

    :goto_2b
    or-int/2addr v0, v14

    goto :goto_2e

    :cond_2d
    move v0, v14

    :goto_2e
    and-int/lit8 v3, v14, 0x30

    if-nez v3, :cond_3e

    invoke-virtual {v15, v11}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const/16 v3, 0x20

    goto :goto_3d

    :cond_3b
    const/16 v3, 0x10

    :goto_3d
    or-int/2addr v0, v3

    :cond_3e
    and-int/lit16 v3, v14, 0x180

    move/from16 v8, p2

    if-nez v3, :cond_50

    invoke-virtual {v15, v8}, LS3/t;->h(Z)Z

    move-result v3

    if-eqz v3, :cond_4d

    const/16 v3, 0x100

    goto :goto_4f

    :cond_4d
    const/16 v3, 0x80

    :goto_4f
    or-int/2addr v0, v3

    :cond_50
    and-int/lit16 v3, v14, 0xc00

    move/from16 v7, p3

    if-nez v3, :cond_62

    invoke-virtual {v15, v7}, LS3/t;->d(F)Z

    move-result v3

    if-eqz v3, :cond_5f

    const/16 v3, 0x800

    goto :goto_61

    :cond_5f
    const/16 v3, 0x400

    :goto_61
    or-int/2addr v0, v3

    :cond_62
    and-int/lit16 v3, v14, 0x6000

    if-nez v3, :cond_72

    invoke-virtual {v15, v12}, LS3/t;->e(I)Z

    move-result v3

    if-eqz v3, :cond_6f

    const/16 v3, 0x4000

    goto :goto_71

    :cond_6f
    const/16 v3, 0x2000

    :goto_71
    or-int/2addr v0, v3

    :cond_72
    const/high16 v3, 0x30000

    or-int/2addr v0, v3

    const/high16 v3, 0x180000

    and-int/2addr v3, v14

    if-nez v3, :cond_86

    invoke-virtual {v15, v13}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/high16 v3, 0x100000

    goto :goto_85

    :cond_83
    const/high16 v3, 0x80000

    :goto_85
    or-int/2addr v0, v3

    :cond_86
    const/high16 v3, 0xc00000

    and-int/2addr v3, v14

    move/from16 v5, p7

    if-nez v3, :cond_99

    invoke-virtual {v15, v5}, LS3/t;->h(Z)Z

    move-result v3

    if-eqz v3, :cond_96

    const/high16 v3, 0x800000

    goto :goto_98

    :cond_96
    const/high16 v3, 0x400000

    :goto_98
    or-int/2addr v0, v3

    :cond_99
    move/from16 v16, v0

    const v0, 0x492493

    and-int v0, v16, v0

    const v3, 0x492492

    if-ne v0, v3, :cond_b3

    invoke-virtual {v15}, LS3/t;->B()Z

    move-result v0

    if-nez v0, :cond_ac

    goto :goto_b3

    :cond_ac
    invoke-virtual {v15}, LS3/t;->S()V

    move-object/from16 v6, p5

    goto/16 :goto_374

    :cond_b3
    :goto_b3
    sget-object v4, Le4/t;->Companion:Le4/q;

    sget-object v3, LS3/n;->b:LS3/a0;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v12, :cond_be

    move v0, v12

    :cond_be
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_c4
    if-ge v9, v0, :cond_e7

    const-string v1, "cell"

    invoke-static {v9, v1}, Lb/b;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    new-instance v1, Ls/g2;

    const/16 v25, 0x0

    const/16 v27, 0xe0

    const/16 v20, 0x0

    const-string v22, ""

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v27}, Ls/g2;-><init>(Ln1/i;Ljava/lang/String;Ljava/lang/String;FZZLs/h2;I)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_c4

    :cond_e7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_eb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_152

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls/g2;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/16 v19, 0x0

    :goto_fd
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_120

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v2, v20

    check-cast v2, Ls/g2;

    iget-object v2, v2, Ls/g2;->b:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v1, Ls/g2;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    move/from16 v0, v19

    :goto_119
    const/4 v2, -0x1

    goto :goto_124

    :cond_11b
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, v20

    goto :goto_fd

    :cond_120
    move-object/from16 v20, v0

    const/4 v0, -0x1

    goto :goto_119

    :goto_124
    if-eq v0, v2, :cond_12c

    invoke-virtual {v6, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_129
    :goto_129
    move-object/from16 v0, v20

    goto :goto_eb

    :cond_12c
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_131
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ls/g2;

    iget-object v9, v9, Ls/g2;->c:Ljava/lang/String;

    invoke-static {v9}, Lzf/s;->O0(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_147

    const/4 v0, -0x1

    goto :goto_14c

    :cond_147
    add-int/lit8 v2, v2, 0x1

    goto :goto_131

    :cond_14a
    const/4 v0, -0x1

    const/4 v2, -0x1

    :goto_14c
    if-eq v2, v0, :cond_129

    invoke-virtual {v6, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_129

    :cond_152
    const/4 v0, 0x2

    invoke-static {v0, v6}, Lbf/u;->A0(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-static {v4, v9}, Landroidx/compose/foundation/layout/d;->d(Le4/t;F)Le4/t;

    move-result-object v1

    const/4 v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lm3/n;->g(F)Lm3/l;

    move-result-object v2

    sget-object v6, Le4/e;->Companion:Le4/c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le4/c;->n:Le4/h;

    const/4 v9, 0x6

    invoke-static {v2, v6, v15, v9}, Lm3/z;->a(Lm3/m;Le4/d;LS3/o;I)Lm3/A;

    move-result-object v2

    iget-wide v9, v15, LS3/t;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v15}, LS3/t;->m()LS3/A0;

    move-result-object v9

    invoke-static {v15, v1}, Lra/b;->q0(LS3/o;Le4/t;)Le4/t;

    move-result-object v1

    sget-object v10, LE4/l;->Companion:LE4/k;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, LE4/k;->b:LE4/j;

    invoke-virtual {v15}, LS3/t;->d0()V

    move-object/from16 v20, v4

    iget-boolean v4, v15, LS3/t;->S:Z

    if-eqz v4, :cond_191

    invoke-virtual {v15, v10}, LS3/t;->l(Lqf/a;)V

    goto :goto_194

    :cond_191
    invoke-virtual {v15}, LS3/t;->n0()V

    :goto_194
    sget-object v4, LE4/k;->f:LE4/i;

    invoke-static {v15, v2, v4}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v2, LE4/k;->e:LE4/i;

    invoke-static {v15, v9, v2}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v2, LE4/k;->g:LE4/i;

    iget-boolean v4, v15, LS3/t;->S:Z

    if-nez v4, :cond_1b2

    invoke-virtual {v15}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v9}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b5

    :cond_1b2
    invoke-static {v6, v15, v6, v2}, LB/D;->B(ILS3/t;ILE4/i;)V

    :cond_1b5
    sget-object v2, LE4/k;->d:LE4/i;

    invoke-static {v15, v1, v2}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    const v1, -0x7b338d1f

    invoke-virtual {v15, v1}, LS3/t;->Z(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1c4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Le4/t;->Companion:Le4/q;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/d;->d(Le4/t;F)Le4/t;

    move-result-object v1

    const/4 v6, 0x6

    int-to-float v2, v6

    invoke-static {v2}, Lm3/n;->g(F)Lm3/l;

    move-result-object v2

    sget-object v4, Le4/e;->Companion:Le4/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Le4/c;->k:Le4/i;

    invoke-static {v2, v4, v15, v6}, Lm3/D0;->a(Lm3/j;Le4/i;LS3/o;I)Lm3/F0;

    move-result-object v2

    iget-wide v6, v15, LS3/t;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v15}, LS3/t;->m()LS3/A0;

    move-result-object v6

    invoke-static {v15, v1}, Lra/b;->q0(LS3/o;Le4/t;)Le4/t;

    move-result-object v1

    sget-object v7, LE4/l;->Companion:LE4/k;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, LE4/k;->b:LE4/j;

    invoke-virtual {v15}, LS3/t;->d0()V

    iget-boolean v9, v15, LS3/t;->S:Z

    if-eqz v9, :cond_209

    invoke-virtual {v15, v7}, LS3/t;->l(Lqf/a;)V

    goto :goto_20c

    :cond_209
    invoke-virtual {v15}, LS3/t;->n0()V

    :goto_20c
    sget-object v7, LE4/k;->f:LE4/i;

    invoke-static {v15, v2, v7}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v2, LE4/k;->e:LE4/i;

    invoke-static {v15, v6, v2}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v2, LE4/k;->g:LE4/i;

    iget-boolean v6, v15, LS3/t;->S:Z

    if-nez v6, :cond_22a

    invoke-virtual {v15}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22d

    :cond_22a
    invoke-static {v4, v15, v4, v2}, LB/D;->B(ILS3/t;ILE4/i;)V

    :cond_22d
    sget-object v2, LE4/k;->d:LE4/i;

    invoke-static {v15, v1, v2}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    const v1, 0x4f344664  # 3.024512E9f

    invoke-virtual {v15, v1}, LS3/t;->Z(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_23c
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ls/g2;

    iget-object v0, v1, Ls/g2;->b:Ljava/lang/String;

    const v2, -0x18914f5a

    invoke-virtual {v15, v2, v0}, LS3/t;->W(ILjava/lang/Object;)V

    sget-object v0, Le4/t;->Companion:Le4/q;

    const/high16 v9, 0x3f800000  # 1.0f

    float-to-double v6, v9

    const-wide/16 v23, 0x0

    cmpl-double v2, v6, v23

    if-lez v2, :cond_25d

    goto :goto_262

    :cond_25d
    const-string v2, "invalid weight; must be greater than zero"

    invoke-static {v2}, Ln3/a;->a(Ljava/lang/String;)V

    :goto_262
    new-instance v2, Landroidx/compose/foundation/layout/LayoutWeightElement;

    const v4, 0x7f7fffff  # Float.MAX_VALUE

    invoke-static {v9, v4}, Lra/b;->V(FF)F

    move-result v4

    const/4 v7, 0x1

    invoke-direct {v2, v4, v7}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Le4/e;->Companion:Le4/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Le4/c;->b:Le4/j;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lm3/s;->d(Le4/e;Z)LC4/k0;

    move-result-object v0

    iget-wide v7, v15, LS3/t;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v15}, LS3/t;->m()LS3/A0;

    move-result-object v6

    invoke-static {v15, v2}, Lra/b;->q0(LS3/o;Le4/t;)Le4/t;

    move-result-object v2

    sget-object v7, LE4/l;->Companion:LE4/k;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, LE4/k;->b:LE4/j;

    invoke-virtual {v15}, LS3/t;->d0()V

    iget-boolean v8, v15, LS3/t;->S:Z

    if-eqz v8, :cond_29e

    invoke-virtual {v15, v7}, LS3/t;->l(Lqf/a;)V

    goto :goto_2a1

    :cond_29e
    invoke-virtual {v15}, LS3/t;->n0()V

    :goto_2a1
    sget-object v7, LE4/k;->f:LE4/i;

    invoke-static {v15, v0, v7}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v0, LE4/k;->e:LE4/i;

    invoke-static {v15, v6, v0}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v0, LE4/k;->g:LE4/i;

    iget-boolean v6, v15, LS3/t;->S:Z

    if-nez v6, :cond_2bf

    invoke-virtual {v15}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c2

    :cond_2bf
    invoke-static {v4, v15, v4, v0}, LB/D;->B(ILS3/t;ILE4/i;)V

    :cond_2c2
    sget-object v0, LE4/k;->d:LE4/i;

    invoke-static {v15, v2, v0}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    const v0, -0x615d173a

    invoke-virtual {v15, v0}, LS3/t;->Z(I)V

    and-int/lit8 v0, v16, 0x70

    const/16 v8, 0x20

    if-ne v0, v8, :cond_2d5

    const/4 v4, 0x1

    goto :goto_2d6

    :cond_2d5
    const/4 v4, 0x0

    :goto_2d6
    const/high16 v0, 0x380000

    and-int v2, v16, v0

    const/high16 v6, 0x100000

    if-ne v2, v6, :cond_2e0

    const/4 v2, 0x1

    goto :goto_2e1

    :cond_2e0
    const/4 v2, 0x0

    :goto_2e1
    or-int/2addr v2, v4

    invoke-virtual {v15}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_2ef

    sget-object v2, LS3/o;->Companion:LS3/n;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v4, v3, :cond_2f8

    :cond_2ef
    new-instance v4, Lu1/B;

    const/4 v2, 0x2

    invoke-direct {v4, v2, v11, v13}, Lu1/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v4}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_2f8
    check-cast v4, Lqf/c;

    const/4 v7, 0x0

    invoke-virtual {v15, v7}, LS3/t;->q(Z)V

    and-int/lit8 v2, v16, 0xe

    shr-int/lit8 v6, v16, 0x3

    and-int/lit16 v6, v6, 0x380

    or-int/2addr v2, v6

    shr-int/lit8 v6, v16, 0x6

    const/high16 v17, 0x70000

    and-int v6, v6, v17

    or-int/2addr v2, v6

    shl-int/lit8 v6, v16, 0xc

    and-int/2addr v0, v6

    or-int v17, v2, v0

    const/16 v18, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p3

    move-object/from16 v23, v3

    move-object v3, v6

    move/from16 v5, p7

    const/high16 v19, 0x100000

    const/16 v24, 0x6

    move/from16 v6, p2

    move/from16 v21, v7

    const/16 v25, 0x1

    move-object v7, v15

    move/from16 v26, v8

    move/from16 v8, v17

    move/from16 v21, v9

    move-object/from16 p5, v10

    move/from16 v10, v25

    move/from16 v17, v26

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, LU9/c;->f(LNc/u;Ls/g2;FLe4/t;Lqf/c;ZZLS3/o;II)V

    invoke-virtual {v15, v10}, LS3/t;->q(Z)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, LS3/t;->q(Z)V

    move/from16 v8, p2

    move-object/from16 v10, p5

    move/from16 v5, p7

    move-object/from16 v3, v23

    goto/16 :goto_23c

    :cond_34a
    move-object/from16 v23, v3

    move-object/from16 p5, v10

    const/4 v0, 0x0

    const/4 v10, 0x1

    const/16 v17, 0x20

    const/high16 v19, 0x100000

    const/high16 v21, 0x3f800000  # 1.0f

    const/16 v24, 0x6

    invoke-virtual {v15, v0}, LS3/t;->q(Z)V

    invoke-virtual {v15, v10}, LS3/t;->q(Z)V

    move/from16 v8, p2

    move/from16 v7, p3

    move-object/from16 v10, p5

    move/from16 v5, p7

    move-object/from16 v3, v23

    goto/16 :goto_1c4

    :cond_36a
    const/4 v0, 0x0

    const/4 v10, 0x1

    invoke-virtual {v15, v0}, LS3/t;->q(Z)V

    invoke-virtual {v15, v10}, LS3/t;->q(Z)V

    move-object/from16 v6, v20

    :goto_374
    invoke-virtual {v15}, LS3/t;->s()LS3/I0;

    move-result-object v10

    if-eqz v10, :cond_392

    new-instance v15, LF/d;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, LF/d;-><init>(LNc/u;Ljava/util/List;ZFILe4/t;Lqf/e;ZI)V

    iput-object v15, v10, LS3/I0;->d:Lqf/e;

    :cond_392
    return-void
.end method

.method public static final e0(LF3/d;II)V
    .registers 5

    iget-object v0, p0, LF3/d;->Y:LG3/W;

    invoke-virtual {v0}, LG3/W;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lra/b;->a0(III)I

    move-result p1

    iget-object v0, p0, LF3/d;->Y:LG3/W;

    invoke-virtual {v0}, LG3/W;->length()I

    move-result v0

    invoke-static {p2, v1, v0}, Lra/b;->a0(III)I

    move-result p2

    invoke-static {p1, p2}, Lbf/Q;->f(II)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, LF3/d;->f(J)V

    return-void
.end method

.method public static final f(LNc/u;Ls/g2;FLe4/t;Lqf/c;ZZLS3/o;II)V
    .registers 41

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p7

    check-cast v0, LS3/t;

    const v4, -0x2213e48c

    invoke-virtual {v0, v4}, LS3/t;->b0(I)LS3/t;

    and-int/lit8 v4, v8, 0x6

    if-nez v4, :cond_2c

    invoke-virtual {v0, v1}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v4, 0x4

    goto :goto_2a

    :cond_29
    const/4 v4, 0x2

    :goto_2a
    or-int/2addr v4, v8

    goto :goto_2d

    :cond_2c
    move v4, v8

    :goto_2d
    and-int/lit8 v9, v8, 0x30

    const/16 v10, 0x20

    if-nez v9, :cond_3e

    invoke-virtual {v0, v2}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    move v9, v10

    goto :goto_3d

    :cond_3b
    const/16 v9, 0x10

    :goto_3d
    or-int/2addr v4, v9

    :cond_3e
    and-int/lit16 v9, v8, 0x180

    if-nez v9, :cond_4e

    invoke-virtual {v0, v3}, LS3/t;->d(F)Z

    move-result v9

    if-eqz v9, :cond_4b

    const/16 v9, 0x100

    goto :goto_4d

    :cond_4b
    const/16 v9, 0x80

    :goto_4d
    or-int/2addr v4, v9

    :cond_4e
    and-int/lit8 v9, p9, 0x4

    if-eqz v9, :cond_57

    or-int/lit16 v4, v4, 0xc00

    :cond_54
    move-object/from16 v11, p3

    goto :goto_69

    :cond_57
    and-int/lit16 v11, v8, 0xc00

    if-nez v11, :cond_54

    move-object/from16 v11, p3

    invoke-virtual {v0, v11}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_66

    const/16 v12, 0x800

    goto :goto_68

    :cond_66
    const/16 v12, 0x400

    :goto_68
    or-int/2addr v4, v12

    :goto_69
    and-int/lit16 v12, v8, 0x6000

    if-nez v12, :cond_79

    invoke-virtual {v0, v5}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_76

    const/16 v12, 0x4000

    goto :goto_78

    :cond_76
    const/16 v12, 0x2000

    :goto_78
    or-int/2addr v4, v12

    :cond_79
    const/high16 v12, 0x30000

    and-int/2addr v12, v8

    if-nez v12, :cond_8a

    invoke-virtual {v0, v6}, LS3/t;->h(Z)Z

    move-result v12

    if-eqz v12, :cond_87

    const/high16 v12, 0x20000

    goto :goto_89

    :cond_87
    const/high16 v12, 0x10000

    :goto_89
    or-int/2addr v4, v12

    :cond_8a
    const/high16 v12, 0x180000

    and-int/2addr v12, v8

    if-nez v12, :cond_9b

    invoke-virtual {v0, v7}, LS3/t;->h(Z)Z

    move-result v12

    if-eqz v12, :cond_98

    const/high16 v12, 0x100000

    goto :goto_9a

    :cond_98
    const/high16 v12, 0x80000

    :goto_9a
    or-int/2addr v4, v12

    :cond_9b
    const v12, 0x92493

    and-int/2addr v12, v4

    const v14, 0x92492

    if-ne v12, v14, :cond_b1

    invoke-virtual {v0}, LS3/t;->B()Z

    move-result v12

    if-nez v12, :cond_ab

    goto :goto_b1

    :cond_ab
    invoke-virtual {v0}, LS3/t;->S()V

    move-object v4, v11

    goto/16 :goto_26e

    :cond_b1
    :goto_b1
    if-eqz v9, :cond_b7

    sget-object v9, Le4/t;->Companion:Le4/q;

    move-object v15, v9

    goto :goto_b8

    :cond_b7
    move-object v15, v11

    :goto_b8
    sget-object v9, LS3/n;->b:LS3/a0;

    iget-object v11, v2, Ls/g2;->c:Ljava/lang/String;

    invoke-static {v11}, Lzf/s;->O0(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v14, 0x0

    iget-boolean v12, v2, Ls/g2;->f:Z

    if-nez v11, :cond_ce

    iget-boolean v11, v2, Ls/g2;->e:Z

    if-eqz v11, :cond_ce

    if-nez v12, :cond_ce

    const/16 v19, 0x1

    goto :goto_d0

    :cond_ce
    move/from16 v19, v14

    :goto_d0
    sget-object v11, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:LS3/E;

    invoke-virtual {v0, v11}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v11, v11

    const/4 v13, 0x0

    move/from16 v24, v12

    const/4 v12, 0x3

    invoke-static {v15, v13, v12}, Landroidx/compose/animation/b;->b(Le4/t;Lc3/R0;I)Le4/t;

    move-result-object v25

    const v13, 0x3f19999a  # 0.6f

    mul-float v29, v11, v13

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v26, 0x0

    const/16 v30, 0x7

    invoke-static/range {v25 .. v30}, Landroidx/compose/foundation/layout/d;->o(Le4/t;FFFFI)Le4/t;

    move-result-object v11

    invoke-static {v11, v3}, Landroidx/compose/foundation/layout/a;->a(Le4/t;F)Le4/t;

    move-result-object v11

    sget-object v13, LO3/x4;->a:LS3/x1;

    invoke-virtual {v0, v13}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LO3/w4;

    iget-object v13, v13, LO3/w4;->d:Lv3/a;

    invoke-static {v11, v13}, LHa/v0;->C(Le4/t;Ll4/u0;)Le4/t;

    move-result-object v16

    sget-object v11, Landroidx/compose/foundation/e;->a:LS3/E;

    invoke-virtual {v0, v11}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v18, v11

    check-cast v18, Le3/f0;

    const v11, 0x6e3c21fe

    invoke-virtual {v0, v11}, LS3/t;->Z(I)V

    invoke-virtual {v0}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v11

    sget-object v13, LS3/o;->Companion:LS3/n;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v11, v9, :cond_125

    invoke-static {v0}, Ln/k;->j(LS3/t;)Lk3/m;

    move-result-object v11

    :cond_125
    move-object/from16 v17, v11

    check-cast v17, Lk3/l;

    invoke-virtual {v0, v14}, LS3/t;->q(Z)V

    const v11, -0x615d173a

    invoke-virtual {v0, v11}, LS3/t;->Z(I)V

    and-int/lit8 v11, v4, 0x70

    if-ne v11, v10, :cond_138

    const/4 v10, 0x1

    goto :goto_139

    :cond_138
    move v10, v14

    :goto_139
    const v11, 0xe000

    and-int/2addr v11, v4

    const/16 v13, 0x4000

    if-ne v11, v13, :cond_143

    const/4 v11, 0x1

    goto :goto_144

    :cond_143
    move v11, v14

    :goto_144
    or-int/2addr v10, v11

    invoke-virtual {v0}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_14d

    if-ne v11, v9, :cond_157

    :cond_14d
    new-instance v11, Lbg/f;

    const/16 v9, 0x1d

    invoke-direct {v11, v9, v2, v5}, Lbg/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v11}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_157
    move-object/from16 v22, v11

    check-cast v22, Lqf/a;

    invoke-virtual {v0, v14}, LS3/t;->q(Z)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x18

    invoke-static/range {v16 .. v23}, Landroidx/compose/foundation/a;->d(Le4/t;Lk3/l;Le3/f0;ZLjava/lang/String;LM4/k;Lqf/a;I)Le4/t;

    move-result-object v9

    sget-object v10, Le4/e;->Companion:Le4/c;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Le4/c;->b:Le4/j;

    invoke-static {v10, v14}, Lm3/s;->d(Le4/e;Z)LC4/k0;

    move-result-object v10

    iget-wide v12, v0, LS3/t;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v0}, LS3/t;->m()LS3/A0;

    move-result-object v12

    invoke-static {v0, v9}, Lra/b;->q0(LS3/o;Le4/t;)Le4/t;

    move-result-object v9

    sget-object v13, LE4/l;->Companion:LE4/k;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, LE4/k;->b:LE4/j;

    invoke-virtual {v0}, LS3/t;->d0()V

    iget-boolean v14, v0, LS3/t;->S:Z

    if-eqz v14, :cond_193

    invoke-virtual {v0, v13}, LS3/t;->l(Lqf/a;)V

    goto :goto_196

    :cond_193
    invoke-virtual {v0}, LS3/t;->n0()V

    :goto_196
    sget-object v13, LE4/k;->f:LE4/i;

    invoke-static {v0, v10, v13}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v10, LE4/k;->e:LE4/i;

    invoke-static {v0, v12, v10}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v10, LE4/k;->g:LE4/i;

    iget-boolean v12, v0, LS3/t;->S:Z

    if-nez v12, :cond_1b4

    invoke-virtual {v0}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1b7

    :cond_1b4
    invoke-static {v11, v0, v11, v10}, LB/D;->B(ILS3/t;ILE4/i;)V

    :cond_1b7
    sget-object v10, LE4/k;->d:LE4/i;

    invoke-static {v0, v9, v10}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    const/high16 v9, 0x3f800000  # 1.0f

    if-eqz v6, :cond_1e0

    if-eqz v7, :cond_1e0

    const v10, 0x55699c01

    invoke-virtual {v0, v10}, LS3/t;->Z(I)V

    sget-object v10, Le4/t;->Companion:Le4/q;

    invoke-static {v10, v9}, Landroidx/compose/foundation/layout/d;->c(Le4/t;F)Le4/t;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x6

    move/from16 v17, v24

    const/4 v13, 0x1

    const/16 v18, 0x3

    move-object v13, v0

    const/4 v3, 0x0

    invoke-static/range {v9 .. v14}, LS3/c;->j(Le4/t;Ljava/util/List;FILS3/o;I)V

    invoke-virtual {v0, v3}, LS3/t;->q(Z)V

    goto :goto_223

    :cond_1e0
    move/from16 v17, v24

    const/4 v3, 0x0

    const/16 v18, 0x3

    const v10, 0x556b8061

    invoke-virtual {v0, v10}, LS3/t;->Z(I)V

    sget-object v10, Le4/t;->Companion:Le4/q;

    invoke-static {v10, v9}, Landroidx/compose/foundation/layout/d;->c(Le4/t;F)Le4/t;

    move-result-object v9

    sget-object v10, LSc/b;->a:LS3/E;

    invoke-virtual {v0, v10}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LSc/a;

    if-nez v10, :cond_215

    sget-object v10, LSc/b;->b:LS3/x1;

    invoke-virtual {v0, v10}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LSc/c;

    sget-object v11, LNc/D;->a:LS3/E;

    invoke-virtual {v0, v11}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LNc/C;

    if-nez v11, :cond_211

    invoke-static {v0}, Lf7/v;->L(LS3/o;)LNc/C;

    move-result-object v11

    :cond_211
    invoke-interface {v10, v11, v0}, LSc/c;->a(LNc/C;LS3/o;)LSc/a;

    move-result-object v10

    :cond_215
    iget-wide v10, v10, LSc/a;->k:J

    sget-object v12, Ll4/o0;->a:Ll4/n0;

    invoke-static {v9, v10, v11, v12}, Landroidx/compose/foundation/a;->b(Le4/t;JLl4/u0;)Le4/t;

    move-result-object v9

    invoke-static {v9, v0, v3}, Lm3/s;->a(Le4/t;LS3/o;I)V

    invoke-virtual {v0, v3}, LS3/t;->q(Z)V

    :goto_223
    iget-object v9, v2, Ls/g2;->g:Ls/h2;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eqz v9, :cond_247

    const/4 v10, 0x1

    if-ne v9, v10, :cond_23f

    const v9, 0xb03a01b

    invoke-virtual {v0, v9}, LS3/t;->Z(I)V

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0xe

    invoke-static {v2, v0, v4}, LU9/c;->c(Ls/g2;LS3/o;I)V

    invoke-virtual {v0, v3}, LS3/t;->q(Z)V

    goto :goto_25b

    :cond_23f
    const v1, 0xb0397c0

    invoke-static {v1, v0, v3}, LB/D;->A(ILS3/t;Z)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_247
    const/4 v10, 0x1

    const v9, 0xb03b06a

    invoke-virtual {v0, v9}, LS3/t;->Z(I)V

    and-int/lit8 v9, v4, 0x7e

    shr-int/lit8 v4, v4, 0xc

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v4, v9

    invoke-static {v1, v2, v7, v0, v4}, LU9/c;->d(LNc/u;Ls/g2;ZLS3/o;I)V

    invoke-virtual {v0, v3}, LS3/t;->q(Z)V

    :goto_25b
    const v4, 0xb03c231

    invoke-virtual {v0, v4}, LS3/t;->Z(I)V

    if-eqz v17, :cond_267

    const/4 v4, 0x6

    invoke-static {v0, v4}, LU9/c;->k(LS3/o;I)V

    :cond_267
    invoke-virtual {v0, v3}, LS3/t;->q(Z)V

    invoke-virtual {v0, v10}, LS3/t;->q(Z)V

    move-object v4, v15

    :goto_26e
    invoke-virtual {v0}, LS3/t;->s()LS3/I0;

    move-result-object v10

    if-eqz v10, :cond_28c

    new-instance v11, LF/d;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, LF/d;-><init>(LNc/u;Ls/g2;FLe4/t;Lqf/c;ZZII)V

    iput-object v11, v10, LS3/I0;->d:Lqf/e;

    :cond_28c
    return-void
.end method

.method public static synthetic f0(LF3/d;I)V
    .registers 2

    invoke-static {p0, p1, p1}, LU9/c;->e0(LF3/d;II)V

    return-void
.end method

.method public static final g(Le4/t;Lp3/F;Lp3/f;Lm3/w0;ZLi3/c0;ZLe3/t;Lm3/m;Lm3/j;Lqf/c;LS3/o;II)V
    .registers 49

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v0, p4

    move/from16 v12, p6

    move-object/from16 v11, p8

    move-object/from16 v10, p9

    move-object/from16 v9, p10

    move/from16 v8, p12

    move-object/from16 v7, p11

    check-cast v7, LS3/t;

    const v2, 0x2a3e8512

    invoke-virtual {v7, v2}, LS3/t;->b0(I)LS3/t;

    and-int/lit8 v2, v8, 0x6

    if-nez v2, :cond_2d

    invoke-virtual {v7, v1}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x4

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x2

    :goto_2b
    or-int/2addr v2, v8

    goto :goto_2e

    :cond_2d
    move v2, v8

    :goto_2e
    and-int/lit8 v4, v8, 0x30

    if-nez v4, :cond_3e

    invoke-virtual {v7, v13}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    const/16 v4, 0x20

    goto :goto_3d

    :cond_3b
    const/16 v4, 0x10

    :goto_3d
    or-int/2addr v2, v4

    :cond_3e
    and-int/lit16 v4, v8, 0x180

    if-nez v4, :cond_57

    and-int/lit16 v4, v8, 0x200

    if-nez v4, :cond_4b

    invoke-virtual {v7, v14}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_4f

    :cond_4b
    invoke-virtual {v7, v14}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v4

    :goto_4f
    if-eqz v4, :cond_54

    const/16 v4, 0x100

    goto :goto_56

    :cond_54
    const/16 v4, 0x80

    :goto_56
    or-int/2addr v2, v4

    :cond_57
    and-int/lit16 v4, v8, 0xc00

    if-nez v4, :cond_67

    invoke-virtual {v7, v15}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    const/16 v4, 0x800

    goto :goto_66

    :cond_64
    const/16 v4, 0x400

    :goto_66
    or-int/2addr v2, v4

    :cond_67
    and-int/lit16 v4, v8, 0x6000

    if-nez v4, :cond_77

    invoke-virtual {v7, v0}, LS3/t;->h(Z)Z

    move-result v4

    if-eqz v4, :cond_74

    const/16 v4, 0x4000

    goto :goto_76

    :cond_74
    const/16 v4, 0x2000

    :goto_76
    or-int/2addr v2, v4

    :cond_77
    const/high16 v4, 0x30000

    and-int v19, v8, v4

    const/4 v4, 0x1

    if-nez v19, :cond_8b

    invoke-virtual {v7, v4}, LS3/t;->h(Z)Z

    move-result v19

    if-eqz v19, :cond_87

    const/high16 v19, 0x20000

    goto :goto_89

    :cond_87
    const/high16 v19, 0x10000

    :goto_89
    or-int v2, v2, v19

    :cond_8b
    const/high16 v19, 0x180000

    and-int v20, v8, v19

    move-object/from16 v4, p5

    if-nez v20, :cond_a0

    invoke-virtual {v7, v4}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9c

    const/high16 v21, 0x100000

    goto :goto_9e

    :cond_9c
    const/high16 v21, 0x80000

    :goto_9e
    or-int v2, v2, v21

    :cond_a0
    const/high16 v21, 0xc00000

    and-int v22, v8, v21

    if-nez v22, :cond_b3

    invoke-virtual {v7, v12}, LS3/t;->h(Z)Z

    move-result v22

    if-eqz v22, :cond_af

    const/high16 v22, 0x800000

    goto :goto_b1

    :cond_af
    const/high16 v22, 0x400000

    :goto_b1
    or-int v2, v2, v22

    :cond_b3
    const/high16 v22, 0x6000000

    and-int v22, v8, v22

    move-object/from16 v5, p7

    if-nez v22, :cond_c8

    invoke-virtual {v7, v5}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c4

    const/high16 v23, 0x4000000

    goto :goto_c6

    :cond_c4
    const/high16 v23, 0x2000000

    :goto_c6
    or-int v2, v2, v23

    :cond_c8
    const/high16 v23, 0x30000000

    and-int v23, v8, v23

    if-nez v23, :cond_db

    invoke-virtual {v7, v11}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d7

    const/high16 v23, 0x20000000

    goto :goto_d9

    :cond_d7
    const/high16 v23, 0x10000000

    :goto_d9
    or-int v2, v2, v23

    :cond_db
    and-int/lit8 v23, p13, 0x6

    if-nez v23, :cond_ed

    invoke-virtual {v7, v10}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e8

    const/16 v23, 0x4

    goto :goto_ea

    :cond_e8
    const/16 v23, 0x2

    :goto_ea
    or-int v23, p13, v23

    goto :goto_ef

    :cond_ed
    move/from16 v23, p13

    :goto_ef
    and-int/lit8 v24, p13, 0x30

    if-nez v24, :cond_100

    invoke-virtual {v7, v9}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_fc

    const/16 v16, 0x20

    goto :goto_fe

    :cond_fc
    const/16 v16, 0x10

    :goto_fe
    or-int v23, v23, v16

    :cond_100
    const v16, 0x12492493

    and-int v3, v2, v16

    const v6, 0x12492492

    if-ne v3, v6, :cond_113

    and-int/lit8 v3, v23, 0x13

    const/16 v6, 0x12

    if-eq v3, v6, :cond_111

    goto :goto_113

    :cond_111
    const/4 v3, 0x0

    goto :goto_114

    :cond_113
    :goto_113
    const/4 v3, 0x1

    :goto_114
    and-int/lit8 v6, v2, 0x1

    invoke-virtual {v7, v6, v3}, LS3/t;->P(IZ)Z

    move-result v3

    if-eqz v3, :cond_396

    invoke-virtual {v7}, LS3/t;->U()V

    and-int/lit8 v3, v8, 0x1

    sget-object v6, LS3/n;->b:LS3/a0;

    if-eqz v3, :cond_12f

    invoke-virtual {v7}, LS3/t;->z()Z

    move-result v3

    if-eqz v3, :cond_12c

    goto :goto_12f

    :cond_12c
    invoke-virtual {v7}, LS3/t;->S()V

    :cond_12f
    :goto_12f
    invoke-virtual {v7}, LS3/t;->r()V

    shr-int/lit8 v25, v2, 0x3

    and-int/lit8 v26, v25, 0xe

    and-int/lit8 v3, v23, 0x70

    or-int v3, v26, v3

    invoke-static {v9, v7}, LS3/A;->A(Ljava/lang/Object;LS3/o;)LS3/i0;

    move-result-object v1

    and-int/lit8 v27, v3, 0xe

    xor-int/lit8 v4, v27, 0x6

    const/4 v5, 0x4

    if-le v4, v5, :cond_14b

    invoke-virtual {v7, v13}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14f

    :cond_14b
    and-int/lit8 v3, v3, 0x6

    if-ne v3, v5, :cond_151

    :cond_14f
    const/4 v3, 0x1

    goto :goto_152

    :cond_151
    const/4 v3, 0x0

    :goto_152
    invoke-virtual {v7}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_15f

    sget-object v3, LS3/o;->Companion:LS3/n;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v4, v6, :cond_18a

    :cond_15f
    sget-object v3, LS3/a0;->w0:LS3/a0;

    new-instance v4, LZ0/m;

    const/4 v5, 0x7

    invoke-direct {v4, v1, v5}, LZ0/m;-><init>(LS3/i0;I)V

    invoke-static {v3, v4}, LS3/A;->o(LS3/l1;Lqf/a;)LS3/I;

    move-result-object v1

    new-instance v4, Lbg/f;

    const/16 v5, 0x14

    invoke-direct {v4, v5, v1, v13}, Lbg/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v4}, LS3/A;->o(LS3/l1;Lqf/a;)LS3/I;

    move-result-object v31

    new-instance v4, LG1/H;

    const-string v33, "getValue()Ljava/lang/Object;"

    const/16 v28, 0x0

    const-class v30, LS3/w1;

    const-string v32, "value"

    const/16 v29, 0xe

    move-object/from16 v27, v4

    invoke-direct/range {v27 .. v33}, LG1/H;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_18a
    move-object v1, v4

    check-cast v1, Lxf/h;

    shr-int/lit8 v3, v2, 0x9

    and-int/lit8 v3, v3, 0x70

    or-int v3, v26, v3

    and-int/lit8 v4, v3, 0xe

    xor-int/lit8 v4, v4, 0x6

    const/4 v5, 0x4

    if-le v4, v5, :cond_1a0

    invoke-virtual {v7, v13}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a4

    :cond_1a0
    and-int/lit8 v4, v3, 0x6

    if-ne v4, v5, :cond_1a6

    :cond_1a4
    const/4 v4, 0x1

    goto :goto_1a7

    :cond_1a6
    const/4 v4, 0x0

    :goto_1a7
    and-int/lit8 v16, v3, 0x70

    xor-int/lit8 v5, v16, 0x30

    const/16 v8, 0x20

    if-le v5, v8, :cond_1b5

    invoke-virtual {v7, v0}, LS3/t;->h(Z)Z

    move-result v5

    if-nez v5, :cond_1b9

    :cond_1b5
    and-int/lit8 v3, v3, 0x30

    if-ne v3, v8, :cond_1bb

    :cond_1b9
    const/4 v3, 0x1

    goto :goto_1bc

    :cond_1bb
    const/4 v3, 0x0

    :goto_1bc
    or-int/2addr v3, v4

    invoke-virtual {v7}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1ca

    sget-object v3, LS3/o;->Companion:LS3/n;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v4, v6, :cond_1d2

    :cond_1ca
    new-instance v4, Lp3/J;

    invoke-direct {v4, v13}, Lp3/J;-><init>(Lp3/F;)V

    invoke-virtual {v7, v4}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_1d2
    move-object/from16 v16, v4

    check-cast v16, Lp3/J;

    invoke-virtual {v7}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, LS3/o;->Companion:LS3/n;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v3, v6, :cond_1ea

    sget-object v3, Lff/i;->x:Lff/i;

    invoke-static {v3, v7}, LS3/A;->m(Lff/h;LS3/o;)LLf/D;

    move-result-object v3

    invoke-virtual {v7, v3}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_1ea
    move-object/from16 v28, v3

    check-cast v28, LLf/D;

    sget-object v3, LF4/P0;->g:LS3/x1;

    invoke-virtual {v7, v3}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ll4/M;

    sget-object v3, LF4/P0;->v:LS3/E;

    invoke-virtual {v7, v3}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_20f

    sget-object v3, Lq3/u0;->Companion:Lq3/t0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lq3/t0;->b:LZ9/D;

    :goto_20c
    move-object/from16 v29, v3

    goto :goto_211

    :cond_20f
    const/4 v3, 0x0

    goto :goto_20c

    :goto_211
    const v3, 0x7fff0

    and-int/2addr v3, v2

    const/16 v4, 0x12

    shl-int/lit8 v4, v23, 0x12

    const/high16 v5, 0x380000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shr-int/lit8 v2, v2, 0x6

    const/high16 v4, 0x1c00000

    and-int/2addr v2, v4

    or-int/2addr v2, v3

    and-int/lit8 v3, v2, 0x70

    xor-int/lit8 v3, v3, 0x30

    const/16 v4, 0x20

    if-le v3, v4, :cond_231

    invoke-virtual {v7, v13}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_235

    :cond_231
    and-int/lit8 v3, v2, 0x30

    if-ne v3, v4, :cond_237

    :cond_235
    const/4 v3, 0x1

    goto :goto_238

    :cond_237
    const/4 v3, 0x0

    :goto_238
    and-int/lit16 v4, v2, 0x380

    xor-int/lit16 v4, v4, 0x180

    const/16 v5, 0x100

    if-le v4, v5, :cond_246

    invoke-virtual {v7, v14}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24a

    :cond_246
    and-int/lit16 v4, v2, 0x180

    if-ne v4, v5, :cond_24c

    :cond_24a
    const/4 v4, 0x1

    goto :goto_24d

    :cond_24c
    const/4 v4, 0x0

    :goto_24d
    or-int/2addr v3, v4

    and-int/lit16 v4, v2, 0x1c00

    xor-int/lit16 v4, v4, 0xc00

    const/16 v5, 0x800

    if-le v4, v5, :cond_25c

    invoke-virtual {v7, v15}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_260

    :cond_25c
    and-int/lit16 v4, v2, 0xc00

    if-ne v4, v5, :cond_262

    :cond_260
    const/4 v4, 0x1

    goto :goto_263

    :cond_262
    const/4 v4, 0x0

    :goto_263
    or-int/2addr v3, v4

    const v4, 0xe000

    and-int/2addr v4, v2

    xor-int/lit16 v4, v4, 0x6000

    const/16 v5, 0x4000

    if-le v4, v5, :cond_274

    invoke-virtual {v7, v0}, LS3/t;->h(Z)Z

    move-result v4

    if-nez v4, :cond_278

    :cond_274
    and-int/lit16 v4, v2, 0x6000

    if-ne v4, v5, :cond_27a

    :cond_278
    const/4 v4, 0x1

    goto :goto_27b

    :cond_27a
    const/4 v4, 0x0

    :goto_27b
    or-int/2addr v3, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v2

    const/high16 v5, 0x30000

    xor-int/2addr v4, v5

    const/high16 v5, 0x20000

    if-le v4, v5, :cond_28d

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, LS3/t;->h(Z)Z

    move-result v17

    if-nez v17, :cond_293

    :cond_28d
    const/high16 v17, 0x30000

    and-int v4, v2, v17

    if-ne v4, v5, :cond_295

    :cond_293
    const/4 v4, 0x1

    goto :goto_296

    :cond_295
    const/4 v4, 0x0

    :goto_296
    or-int/2addr v3, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v2

    xor-int v4, v4, v19

    const/high16 v5, 0x100000

    if-le v4, v5, :cond_2a6

    invoke-virtual {v7, v10}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2aa

    :cond_2a6
    and-int v4, v2, v19

    if-ne v4, v5, :cond_2ac

    :cond_2aa
    const/4 v4, 0x1

    goto :goto_2ad

    :cond_2ac
    const/4 v4, 0x0

    :goto_2ad
    or-int/2addr v3, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v4, v2

    xor-int v4, v4, v21

    const/high16 v5, 0x800000

    if-le v4, v5, :cond_2bd

    invoke-virtual {v7, v11}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c1

    :cond_2bd
    and-int v2, v2, v21

    if-ne v2, v5, :cond_2c3

    :cond_2c1
    const/4 v2, 0x1

    goto :goto_2c4

    :cond_2c3
    const/4 v2, 0x0

    :goto_2c4
    or-int/2addr v2, v3

    invoke-virtual {v7, v8}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v7}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_2d9

    if-ne v3, v6, :cond_2d3

    goto :goto_2d9

    :cond_2d3
    move-object/from16 v34, v6

    move-object v15, v7

    const/16 v17, 0x1

    goto :goto_302

    :cond_2d9
    :goto_2d9
    new-instance v5, Lp3/s;

    move-object v2, v5

    move-object/from16 v3, p1

    const/16 v17, 0x1

    move-object/from16 v4, p3

    move-object v14, v5

    const/16 v18, 0x4

    move/from16 v5, p4

    move-object/from16 v34, v6

    move/from16 v15, v18

    move-object v6, v1

    move-object v15, v7

    move-object/from16 v7, p2

    move-object/from16 v19, v8

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, v28

    move-object/from16 v11, v19

    move-object/from16 v12, v29

    invoke-direct/range {v2 .. v12}, Lp3/s;-><init>(Lp3/F;Lm3/w0;ZLxf/h;Lp3/f;Lm3/m;Lm3/j;LLf/D;Ll4/M;LZ9/D;)V

    invoke-virtual {v15, v14}, LS3/t;->k0(Ljava/lang/Object;)V

    move-object v3, v14

    :goto_302
    move-object v12, v3

    check-cast v12, Lq3/O;

    sget-object v8, Li3/w0;->x:Li3/w0;

    if-eqz p6, :cond_344

    const v2, 0x1a13923

    invoke-virtual {v15, v2}, LS3/t;->Z(I)V

    sget-object v2, Le4/t;->Companion:Le4/q;

    xor-int/lit8 v3, v26, 0x6

    const/4 v4, 0x4

    if-le v3, v4, :cond_31c

    invoke-virtual {v15, v13}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_320

    :cond_31c
    and-int/lit8 v3, v25, 0x6

    if-ne v3, v4, :cond_323

    :cond_320
    move/from16 v4, v17

    goto :goto_324

    :cond_323
    const/4 v4, 0x0

    :goto_324
    invoke-virtual {v15}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v3

    if-nez v4, :cond_32e

    move-object/from16 v4, v34

    if-ne v3, v4, :cond_336

    :cond_32e
    new-instance v3, Lp3/g;

    invoke-direct {v3, v13}, Lp3/g;-><init>(Lp3/F;)V

    invoke-virtual {v15, v3}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_336
    check-cast v3, Lp3/g;

    iget-object v4, v13, Lp3/F;->n:Li3/a;

    invoke-static {v2, v3, v4, v0, v8}, Landroidx/compose/foundation/lazy/layout/a;->a(Le4/q;Lq3/r;Li3/a;ZLi3/w0;)Le4/t;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, LS3/t;->q(Z)V

    :goto_342
    move-object v9, v2

    goto :goto_351

    :cond_344
    const/4 v3, 0x0

    const v2, 0x1a5be30

    invoke-virtual {v15, v2}, LS3/t;->Z(I)V

    invoke-virtual {v15, v3}, LS3/t;->q(Z)V

    sget-object v2, Le4/t;->Companion:Le4/q;

    goto :goto_342

    :goto_351
    iget-object v2, v13, Lp3/F;->k:Lp3/C;

    move-object/from16 v14, p0

    invoke-interface {v14, v2}, Le4/t;->p(Le4/t;)Le4/t;

    move-result-object v2

    iget-object v3, v13, Lp3/F;->l:Lq3/f;

    invoke-interface {v2, v3}, Le4/t;->p(Le4/t;)Le4/t;

    move-result-object v2

    move-object v3, v1

    move-object/from16 v4, v16

    move-object v5, v8

    move/from16 v6, p6

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/layout/a;->b(Le4/t;Lxf/h;Lq3/g0;Li3/w0;ZZ)Le4/t;

    move-result-object v2

    invoke-interface {v2, v9}, Le4/t;->p(Le4/t;)Le4/t;

    move-result-object v2

    iget-object v3, v13, Lp3/F;->m:Landroidx/compose/foundation/lazy/layout/b;

    iget-object v3, v3, Landroidx/compose/foundation/lazy/layout/b;->k:Le4/t;

    invoke-interface {v2, v3}, Le4/t;->p(Le4/t;)Le4/t;

    move-result-object v2

    const/4 v11, 0x0

    iget-object v9, v13, Lp3/F;->f:Lk3/m;

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move-object v4, v8

    move/from16 v5, p6

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v9

    move v9, v10

    move-object/from16 v10, p7

    invoke-static/range {v2 .. v11}, Landroidx/compose/foundation/a;->j(Le4/t;Li3/Y0;Li3/w0;ZZLi3/c0;Lk3/m;ZLe3/t;Li3/d;)Le4/t;

    move-result-object v3

    const/4 v7, 0x0

    iget-object v4, v13, Lp3/F;->o:Lq3/Y;

    move-object v2, v1

    move-object v5, v12

    move-object v6, v15

    invoke-static/range {v2 .. v7}, Lq3/J;->c(Lxf/h;Le4/t;Lq3/Y;Lq3/O;LS3/o;I)V

    goto :goto_39c

    :cond_396
    move-object/from16 v14, p0

    move-object v15, v7

    invoke-virtual {v15}, LS3/t;->S()V

    :goto_39c
    invoke-virtual {v15}, LS3/t;->s()LS3/I0;

    move-result-object v15

    if-eqz v15, :cond_3c5

    new-instance v12, Lp3/p;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object v14, v12

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lp3/p;-><init>(Le4/t;Lp3/F;Lp3/f;Lm3/w0;ZLi3/c0;ZLe3/t;Lm3/m;Lm3/j;Lqf/c;II)V

    iput-object v14, v15, LS3/I0;->d:Lqf/e;

    :cond_3c5
    return-void
.end method

.method public static final g0(LU/l;Ljava/lang/String;)Ls/e0;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    invoke-static {p1}, Lzf/s;->O0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_10

    :cond_f
    move-object p1, v0

    :goto_10
    if-nez p1, :cond_13

    goto :goto_15

    :cond_13
    :goto_13
    move-object v0, p1

    goto :goto_1e

    :cond_15
    :goto_15
    iget-object p1, p0, LU/l;->c:Ljava/lang/String;

    invoke-static {p1}, Lzf/s;->O0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_13

    :cond_1e
    :goto_1e
    new-instance p1, Ls/e0;

    iget-object v1, p0, LU/l;->a:Ljava/lang/String;

    iget p0, p0, LU/l;->b:I

    invoke-direct {p1, v1, v0, p0}, Ls/e0;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1
.end method

.method public static final h(Lz0/D;Le4/t;LS3/o;I)V
    .registers 34

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    const-string v0, "component"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v11, p2

    check-cast v11, LS3/t;

    const v0, -0x291322bc

    invoke-virtual {v11, v0}, LS3/t;->b0(I)LS3/t;

    and-int/lit8 v0, v10, 0x6

    if-nez v0, :cond_24

    invoke-virtual {v11, v8}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x4

    goto :goto_22

    :cond_21
    const/4 v0, 0x2

    :goto_22
    or-int/2addr v0, v10

    goto :goto_25

    :cond_24
    move v0, v10

    :goto_25
    and-int/lit8 v1, v10, 0x30

    if-nez v1, :cond_35

    invoke-virtual {v11, v9}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v1, 0x20

    goto :goto_34

    :cond_32
    const/16 v1, 0x10

    :goto_34
    or-int/2addr v0, v1

    :cond_35
    and-int/lit8 v0, v0, 0x13

    const/16 v1, 0x12

    if-ne v0, v1, :cond_48

    invoke-virtual {v11}, LS3/t;->B()Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_48

    :cond_42
    invoke-virtual {v11}, LS3/t;->S()V

    move-object v1, v11

    goto/16 :goto_188

    :cond_48
    :goto_48
    const/4 v0, 0x1

    iget-object v1, v8, Lz0/D;->B0:LOf/v0;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v1, v12, v11, v13, v0}, LS3/A;->l(LOf/M0;LMf/d;LS3/o;II)LS3/i0;

    move-result-object v14

    const v15, 0x4c5de2

    invoke-virtual {v11, v15}, LS3/t;->Z(I)V

    invoke-virtual {v11, v8}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v11}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v1

    sget-object v7, LS3/n;->b:LS3/a0;

    if-nez v0, :cond_6d

    sget-object v0, LS3/o;->Companion:LS3/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v1, v7, :cond_6b

    goto :goto_6d

    :cond_6b
    move-object v12, v7

    goto :goto_8a

    :cond_6d
    :goto_6d
    new-instance v6, LC1/x;

    const-class v3, Lz0/D;

    const-string v4, "onEvent"

    const/4 v1, 0x1

    const-string v5, "onEvent(Lai/x/grok/image/api/GrokMediaLibraryComponent$Event;)V"

    const/16 v16, 0x0

    const/16 v17, 0x13

    move-object v0, v6

    move-object/from16 v2, p0

    move-object v15, v6

    move/from16 v6, v16

    move-object v12, v7

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, LC1/x;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v11, v15}, LS3/t;->k0(Ljava/lang/Object;)V

    move-object v1, v15

    :goto_8a
    move-object v7, v1

    check-cast v7, Lxf/e;

    const v0, 0x6e3c21fe

    invoke-static {v0, v11, v13}, LB/D;->h(ILS3/t;Z)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, LS3/o;->Companion:LS3/n;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v1, v12, :cond_aa

    const/16 v1, 0x64

    int-to-float v1, v1

    new-instance v2, Lc5/h;

    invoke-direct {v2, v1}, Lc5/h;-><init>(F)V

    invoke-static {v2}, LS3/A;->u(Ljava/lang/Object;)LS3/v0;

    move-result-object v1

    invoke-virtual {v11, v1}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_aa
    move-object v15, v1

    check-cast v15, LS3/i0;

    invoke-virtual {v11, v13}, LS3/t;->q(Z)V

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:LS3/x1;

    invoke-virtual {v11, v1}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/Context;

    sget-object v1, LNc/w;->a:LS3/E;

    invoke-virtual {v11, v1}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LO3/T4;

    invoke-virtual {v11, v0}, LS3/t;->Z(I)V

    invoke-virtual {v11}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_d3

    const/4 v1, 0x0

    invoke-static {v1}, LS3/A;->u(Ljava/lang/Object;)LS3/v0;

    move-result-object v0

    invoke-virtual {v11, v0}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_d3
    move-object v5, v0

    check-cast v5, LS3/i0;

    invoke-virtual {v11, v13}, LS3/t;->q(Z)V

    invoke-interface {v5}, LS3/w1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD0/n;

    const v1, 0x4c5de2

    invoke-virtual {v11, v1}, LS3/t;->Z(I)V

    invoke-virtual {v11, v7}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v11}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_f1

    if-ne v3, v12, :cond_fb

    :cond_f1
    new-instance v3, LB/r;

    const/16 v1, 0x19

    invoke-direct {v3, v1, v7}, LB/r;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v11, v3}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_fb
    check-cast v3, Lqf/c;

    invoke-virtual {v11, v13}, LS3/t;->q(Z)V

    invoke-static {v0, v3, v11}, Lq8/c;->z(LD0/n;Lqf/c;LS3/o;)LS0/p;

    move-result-object v4

    const v0, -0x48fade91

    invoke-virtual {v11, v0}, LS3/t;->Z(I)V

    invoke-virtual {v11, v8}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v11, v2}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v11, v6}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v11, v4}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v11}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_129

    if-ne v1, v12, :cond_126

    goto :goto_129

    :cond_126
    move-object/from16 v29, v6

    goto :goto_13c

    :cond_129
    :goto_129
    new-instance v12, LQ0/A;

    const/16 v16, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v3, v6

    move-object/from16 v29, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, LQ0/A;-><init>(Lz0/D;LO3/T4;Landroid/content/Context;LS0/p;LS3/i0;Lff/c;)V

    invoke-virtual {v11, v12}, LS3/t;->k0(Ljava/lang/Object;)V

    move-object v1, v12

    :goto_13c
    check-cast v1, Lqf/e;

    invoke-virtual {v11, v13}, LS3/t;->q(Z)V

    move-object/from16 v0, v29

    invoke-static {v11, v0, v1}, LS3/A;->f(LS3/o;Ljava/lang/Object;Lqf/e;)V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v9, v0}, Landroidx/compose/foundation/layout/d;->c(Le4/t;F)Le4/t;

    move-result-object v0

    new-instance v1, LB3/v;

    const/16 v2, 0x15

    invoke-direct {v1, v2, v7, v15}, LB3/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v2, -0x32b0214c

    invoke-static {v2, v1, v11}, La4/e;->e(ILaf/e;LS3/o;)La4/d;

    move-result-object v12

    new-instance v1, LM/h;

    const/4 v2, 0x2

    invoke-direct {v1, v8, v14, v15, v2}, LM/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v2, -0x59fb1602

    invoke-static {v2, v1, v11}, La4/e;->e(ILaf/e;LS3/o;)La4/d;

    move-result-object v24

    const/16 v23, 0x0

    const v26, 0x180030

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v27, 0xc36

    const/16 v28, 0x13bc

    move-object v1, v11

    move-object v11, v0

    move-object/from16 v25, v1

    invoke-static/range {v11 .. v28}, Lcom/google/android/gms/internal/measurement/J1;->q(Le4/t;Lqf/e;Lqf/e;Lqf/e;Lqf/e;IZLqf/e;Lqf/e;Lqf/e;ZZLandroidx/lifecycle/C;La4/d;LS3/o;III)V

    :goto_188
    invoke-virtual {v1}, LS3/t;->s()LS3/I0;

    move-result-object v0

    if-eqz v0, :cond_197

    new-instance v1, LB/C;

    const/16 v2, 0x1c

    invoke-direct {v1, v8, v9, v10, v2}, LB/C;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v1, v0, LS3/I0;->d:Lqf/e;

    :cond_197
    return-void
.end method

.method public static final h0(Landroid/net/Uri;)LM7/F;
    .registers 1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LH2/g;->n0(Ljava/lang/String;)LM7/F;

    move-result-object p0

    return-object p0
.end method

.method public static final i(LA0/A0;Lqf/c;Lqf/c;LS3/o;I)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    const/16 v0, 0x8

    move-object/from16 v12, p3

    check-cast v12, LS3/t;

    const v5, 0x400ea12

    invoke-virtual {v12, v5}, LS3/t;->b0(I)LS3/t;

    and-int/lit8 v5, v4, 0x6

    if-nez v5, :cond_2c

    and-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_21

    invoke-virtual {v12, v1}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_25

    :cond_21
    invoke-virtual {v12, v1}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v5

    :goto_25
    if-eqz v5, :cond_29

    const/4 v5, 0x4

    goto :goto_2a

    :cond_29
    const/4 v5, 0x2

    :goto_2a
    or-int/2addr v5, v4

    goto :goto_2d

    :cond_2c
    move v5, v4

    :goto_2d
    and-int/lit8 v6, v4, 0x30

    if-nez v6, :cond_3d

    invoke-virtual {v12, v2}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    const/16 v6, 0x20

    goto :goto_3c

    :cond_3a
    const/16 v6, 0x10

    :goto_3c
    or-int/2addr v5, v6

    :cond_3d
    and-int/lit16 v6, v4, 0x180

    if-nez v6, :cond_4d

    invoke-virtual {v12, v3}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    const/16 v6, 0x100

    goto :goto_4c

    :cond_4a
    const/16 v6, 0x80

    :goto_4c
    or-int/2addr v5, v6

    :cond_4d
    move v14, v5

    and-int/lit16 v5, v14, 0x93

    const/16 v6, 0x92

    if-ne v5, v6, :cond_62

    invoke-virtual {v12}, LS3/t;->B()Z

    move-result v5

    if-nez v5, :cond_5b

    goto :goto_62

    :cond_5b
    invoke-virtual {v12}, LS3/t;->S()V

    move-object v5, v1

    move-object v6, v2

    goto/16 :goto_1e6

    :cond_62
    :goto_62
    sget-object v15, LS3/n;->b:LS3/a0;

    iget-object v5, v1, LA0/A0;->a:LOd/e;

    instance-of v6, v5, LOd/b;

    const/4 v11, 0x0

    if-eqz v6, :cond_7e

    const v0, 0x76ed067

    invoke-virtual {v12, v0}, LS3/t;->Z(I)V

    const/4 v0, 0x0

    invoke-static {v0, v12, v11}, Lr5/d;->h(Le4/t;LS3/o;I)V

    invoke-virtual {v12, v11}, LS3/t;->q(Z)V

    move-object v5, v1

    move-object v6, v2

    move v2, v11

    const/4 v1, 0x1

    goto/16 :goto_187

    :cond_7e
    instance-of v6, v5, LOd/c;

    if-eqz v6, :cond_167

    const v0, -0x1993be71

    invoke-virtual {v12, v0}, LS3/t;->Z(I)V

    sget-object v0, Le4/t;->Companion:Le4/q;

    sget-object v5, Lm3/n;->c:Lm3/h;

    sget-object v6, Le4/e;->Companion:Le4/c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le4/c;->n:Le4/h;

    invoke-static {v5, v6, v12, v11}, Lm3/z;->a(Lm3/m;Le4/d;LS3/o;I)Lm3/A;

    move-result-object v5

    iget-wide v6, v12, LS3/t;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v12}, LS3/t;->m()LS3/A0;

    move-result-object v7

    invoke-static {v12, v0}, Lra/b;->q0(LS3/o;Le4/t;)Le4/t;

    move-result-object v8

    sget-object v9, LE4/l;->Companion:LE4/k;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, LE4/k;->b:LE4/j;

    invoke-virtual {v12}, LS3/t;->d0()V

    iget-boolean v10, v12, LS3/t;->S:Z

    if-eqz v10, :cond_b7

    invoke-virtual {v12, v9}, LS3/t;->l(Lqf/a;)V

    goto :goto_ba

    :cond_b7
    invoke-virtual {v12}, LS3/t;->n0()V

    :goto_ba
    sget-object v10, LE4/k;->f:LE4/i;

    invoke-static {v12, v5, v10}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v5, LE4/k;->e:LE4/i;

    invoke-static {v12, v7, v5}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v7, LE4/k;->g:LE4/i;

    iget-boolean v13, v12, LS3/t;->S:Z

    if-nez v13, :cond_d8

    invoke-virtual {v12}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v13, v11}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_db

    :cond_d8
    invoke-static {v6, v12, v6, v7}, LB/D;->B(ILS3/t;ILE4/i;)V

    :cond_db
    sget-object v6, LE4/k;->d:LE4/i;

    invoke-static {v12, v8, v6}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    shr-int/lit8 v8, v14, 0x6

    and-int/lit8 v8, v8, 0xe

    invoke-static {v3, v12, v8}, LU9/c;->n(Lqf/c;LS3/o;I)V

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-static {v0, v8}, Landroidx/compose/foundation/layout/d;->c(Le4/t;F)Le4/t;

    move-result-object v0

    sget-object v8, Le4/c;->f:Le4/j;

    const/4 v11, 0x0

    invoke-static {v8, v11}, Lm3/s;->d(Le4/e;Z)LC4/k0;

    move-result-object v8

    iget-wide v1, v12, LS3/t;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v12}, LS3/t;->m()LS3/A0;

    move-result-object v2

    invoke-static {v12, v0}, Lra/b;->q0(LS3/o;Le4/t;)Le4/t;

    move-result-object v0

    invoke-virtual {v12}, LS3/t;->d0()V

    iget-boolean v13, v12, LS3/t;->S:Z

    if-eqz v13, :cond_10d

    invoke-virtual {v12, v9}, LS3/t;->l(Lqf/a;)V

    goto :goto_110

    :cond_10d
    invoke-virtual {v12}, LS3/t;->n0()V

    :goto_110
    invoke-static {v12, v8, v10}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    invoke-static {v12, v2, v5}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    iget-boolean v2, v12, LS3/t;->S:Z

    if-nez v2, :cond_128

    invoke-virtual {v12}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12b

    :cond_128
    invoke-static {v1, v12, v1, v7}, LB/D;->B(ILS3/t;ILE4/i;)V

    :cond_12b
    invoke-static {v12, v0, v6}, LS3/A;->B(LS3/o;Ljava/lang/Object;Lqf/e;)V

    sget-object v0, LSc/b;->a:LS3/E;

    invoke-virtual {v12, v0}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSc/a;

    if-nez v0, :cond_152

    sget-object v0, LSc/b;->b:LS3/x1;

    invoke-virtual {v12, v0}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSc/c;

    sget-object v1, LNc/D;->a:LS3/E;

    invoke-virtual {v12, v1}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LNc/C;

    if-nez v1, :cond_14e

    invoke-static {v12}, Lf7/v;->L(LS3/o;)LNc/C;

    move-result-object v1

    :cond_14e
    invoke-interface {v0, v1, v12}, LSc/c;->a(LNc/C;LS3/o;)LSc/a;

    move-result-object v0

    :cond_152
    iget-wide v8, v0, LSc/a;->e:J

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v1, 0x1

    move-object v10, v12

    move v2, v11

    move-object v11, v0

    invoke-static/range {v5 .. v11}, Lq8/c;->a(FIIJLS3/o;Le4/t;)V

    invoke-static {v12, v1, v1, v2}, Ln/k;->m(LS3/t;ZZZ)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    goto :goto_187

    :cond_167
    move v2, v11

    const/4 v1, 0x1

    instance-of v6, v5, LOd/d;

    if-eqz v6, :cond_200

    const v6, -0x198deba8

    invoke-virtual {v12, v6}, LS3/t;->Z(I)V

    check-cast v5, LOd/d;

    sget-object v6, LD0/B;->Companion:LD0/A;

    and-int/lit8 v6, v14, 0x70

    or-int/2addr v0, v6

    and-int/lit16 v6, v14, 0x380

    or-int/2addr v0, v6

    move-object/from16 v6, p1

    invoke-static {v5, v6, v3, v12, v0}, LU9/c;->j(LOd/d;Lqf/c;Lqf/c;LS3/o;I)V

    invoke-virtual {v12, v2}, LS3/t;->q(Z)V

    move-object/from16 v5, p0

    :goto_187
    iget-object v0, v5, LA0/A0;->c:LD0/C;

    if-eqz v0, :cond_1e6

    const v7, -0x615d173a

    invoke-virtual {v12, v7}, LS3/t;->Z(I)V

    and-int/lit8 v7, v14, 0x70

    const/16 v8, 0x20

    if-ne v7, v8, :cond_199

    move v11, v1

    goto :goto_19a

    :cond_199
    move v11, v2

    :goto_19a
    invoke-virtual {v12, v0}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v8, v11

    invoke-virtual {v12}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_1ac

    sget-object v8, LS3/o;->Companion:LS3/n;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v9, v15, :cond_1b6

    :cond_1ac
    new-instance v9, LB/h;

    const/16 v8, 0x18

    invoke-direct {v9, v8, v6, v0}, LB/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v9}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_1b6
    check-cast v9, Lqf/c;

    invoke-virtual {v12, v2}, LS3/t;->q(Z)V

    const v0, 0x4c5de2

    invoke-virtual {v12, v0}, LS3/t;->Z(I)V

    const/16 v0, 0x20

    if-ne v7, v0, :cond_1c7

    move v11, v1

    goto :goto_1c8

    :cond_1c7
    move v11, v2

    :goto_1c8
    invoke-virtual {v12}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v0

    if-nez v11, :cond_1d5

    sget-object v1, LS3/o;->Companion:LS3/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v0, v15, :cond_1de

    :cond_1d5
    new-instance v0, LO3/n1;

    const/4 v1, 0x5

    invoke-direct {v0, v6, v1}, LO3/n1;-><init>(Lqf/c;I)V

    invoke-virtual {v12, v0}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_1de
    check-cast v0, Lqf/a;

    invoke-virtual {v12, v2}, LS3/t;->q(Z)V

    invoke-static {v2, v12, v0, v9}, Lw8/j;->f(ILS3/o;Lqf/a;Lqf/c;)V

    :cond_1e6
    :goto_1e6
    invoke-virtual {v12}, LS3/t;->s()LS3/I0;

    move-result-object v7

    if-eqz v7, :cond_1ff

    new-instance v8, LB/p;

    const/16 v9, 0x15

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move v5, v9

    invoke-direct/range {v0 .. v5}, LB/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v8, v7, LS3/I0;->d:Lqf/e;

    :cond_1ff
    return-void

    :cond_200
    const v0, 0x76ec6d2

    invoke-static {v0, v12, v2}, LB/D;->A(ILS3/t;Z)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0
.end method

.method public static final i0(Landroid/net/Uri;Landroid/content/Intent;)LO1/z;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1f6

    goto/16 :goto_1f5

    :sswitch_15
    const-string v2, "grok.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_1f5

    :cond_1f
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v2, "getPathSegments(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lbf/u;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_143

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "toString(...)"

    sparse-switch v2, :sswitch_data_208

    goto/16 :goto_1f5

    :sswitch_3b
    const-string v2, "imagine"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_1f5

    :cond_45
    if-eqz p1, :cond_4e

    const-string v0, "ai.x.grok.action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_4e
    move-object v0, v1

    :goto_4f
    const/4 v4, 0x0

    if-eqz p1, :cond_79

    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_79

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    const-string v6, "image/*"

    invoke-virtual {v5, v6}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-lez v5, :cond_6b

    goto :goto_6c

    :cond_6b
    move-object p1, v1

    :goto_6c
    if-eqz p1, :cond_79

    invoke-virtual {p1, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    if-eqz p1, :cond_79

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p1

    goto :goto_7a

    :cond_79
    move-object p1, v1

    :goto_7a
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_9d

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "post"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    goto :goto_9e

    :cond_9d
    move-object p0, v1

    :goto_9e
    if-nez p0, :cond_a1

    goto :goto_ae

    :cond_a1
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "get(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :goto_ae
    const-string p0, "video_from_image"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c7

    if-eqz p1, :cond_c7

    new-instance p0, LO1/l;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, LO1/l;-><init>(Ljava/lang/String;)V

    :goto_c4
    move-object v1, p0

    goto/16 :goto_1f5

    :cond_c7
    if-eqz v1, :cond_cf

    new-instance p0, LO1/i;

    invoke-direct {p0, v1}, LO1/i;-><init>(Ljava/lang/String;)V

    goto :goto_c4

    :cond_cf
    sget-object p0, LO1/f;->INSTANCE:LO1/f;

    goto :goto_c4

    :sswitch_d2
    const-string p0, "subscribe"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dc

    goto/16 :goto_1f5

    :cond_dc
    sget-object v1, LO1/x;->INSTANCE:LO1/x;

    goto/16 :goto_1f5

    :sswitch_e0
    const-string p1, "share"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ea

    goto/16 :goto_1f5

    :cond_ea
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1f5

    new-instance v1, LO1/v;

    invoke-static {p1}, LKe/a;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, p0}, LO1/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f5

    :sswitch_102
    const-string p0, "plans"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10c

    goto/16 :goto_1f5

    :cond_10c
    sget-object v1, LO1/x;->INSTANCE:LO1/x;

    goto/16 :goto_1f5

    :sswitch_110
    const-string p1, "chat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11a

    goto/16 :goto_1f5

    :cond_11a
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f5

    new-instance v1, LO1/d;

    invoke-direct {v1, p0}, LO1/d;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1f5

    :sswitch_127
    const-string p0, "manage-subscriptions"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_131

    goto/16 :goto_1f5

    :cond_131
    sget-object v1, LO1/x;->INSTANCE:LO1/x;

    goto/16 :goto_1f5

    :sswitch_135
    const-string p0, "voice-mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13f

    goto/16 :goto_1f5

    :cond_13f
    sget-object v1, LO1/y;->INSTANCE:LO1/y;

    goto/16 :goto_1f5

    :cond_143
    const-string p1, "q"

    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LKe/a;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzf/s;->O0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_154

    move-object p1, v1

    :cond_154
    const-string v0, "m"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_160

    if-nez p0, :cond_160

    goto/16 :goto_1f5

    :cond_160
    new-instance v1, LO1/s;

    invoke-direct {v1, p1, p0}, LO1/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f5

    :sswitch_167
    const-string p0, "voice"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_171

    goto/16 :goto_1f5

    :cond_171
    sget-object v1, LO1/y;->INSTANCE:LO1/y;

    goto/16 :goto_1f5

    :sswitch_175
    const-string p1, "oauth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f5

    goto :goto_187

    :sswitch_17e
    const-string p1, "login"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_187

    goto :goto_1f5

    :cond_187
    :goto_187
    const-string p1, "state"

    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sessionCookie"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, LO1/p;

    invoke-direct {v3, v0, p1, v2, p0}, LO1/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lld/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b5
    :goto_1b5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lld/d;

    invoke-interface {v2}, Lld/d;->d()Lld/a;

    move-result-object v2

    sget-object v4, Lld/a;->Y:Lld/a;

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gtz v2, :cond_1b5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b5

    :cond_1d2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Parsed deep link login: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lld/d;

    invoke-interface {v0, v1, p0, v1}, Lld/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e4

    :cond_1f4
    move-object v1, v3

    :cond_1f5
    :goto_1f5
    return-object v1

    :sswitch_data_1f6
    .sparse-switch
        0x625ef69 -> :sswitch_17e
        0x64a0e97 -> :sswitch_175
        0x6b2e132 -> :sswitch_167
        0x1d839b1a -> :sswitch_15
    .end sparse-switch

    :sswitch_data_208
    .sparse-switch
        -0x5d0e96a2 -> :sswitch_135
        -0xbc9fb72 -> :sswitch_127
        0x2e9358 -> :sswitch_110
        0x65cda6a -> :sswitch_102
        0x6854fdf -> :sswitch_e0
        0x1eafdd4a -> :sswitch_d2
        0x71f5db56 -> :sswitch_3b
    .end sparse-switch
.end method

.method public static final j(LOd/d;Lqf/c;Lqf/c;LS3/o;I)V
    .registers 29

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p4

    const/16 v0, 0x30

    move-object/from16 v15, p3

    check-cast v15, LS3/t;

    const v1, -0x708c1e94

    invoke-virtual {v15, v1}, LS3/t;->b0(I)LS3/t;

    const/4 v1, 0x6

    and-int/lit8 v2, v8, 0x6

    const/4 v3, 0x4

    if-nez v2, :cond_2c

    and-int/lit8 v2, v8, 0x8

    if-nez v2, :cond_21

    invoke-virtual {v15, v6}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_25

    :cond_21
    invoke-virtual {v15, v6}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v2

    :goto_25
    if-eqz v2, :cond_29

    move v2, v3

    goto :goto_2a

    :cond_29
    const/4 v2, 0x2

    :goto_2a
    or-int/2addr v2, v8

    goto :goto_2d

    :cond_2c
    move v2, v8

    :goto_2d
    and-int/lit8 v4, v8, 0x30

    const/16 v5, 0x20

    if-nez v4, :cond_3e

    invoke-virtual {v15, v7}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    move v4, v5

    goto :goto_3d

    :cond_3b
    const/16 v4, 0x10

    :goto_3d
    or-int/2addr v2, v4

    :cond_3e
    and-int/lit16 v4, v8, 0x180

    const/16 v9, 0x100

    move-object/from16 v14, p2

    if-nez v4, :cond_51

    invoke-virtual {v15, v14}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    move v4, v9

    goto :goto_50

    :cond_4e
    const/16 v4, 0x80

    :goto_50
    or-int/2addr v2, v4

    :cond_51
    and-int/lit16 v4, v2, 0x93

    const/16 v10, 0x92

    if-ne v4, v10, :cond_64

    invoke-virtual {v15}, LS3/t;->B()Z

    move-result v4

    if-nez v4, :cond_5e

    goto :goto_64

    :cond_5e
    invoke-virtual {v15}, LS3/t;->S()V

    move-object v1, v15

    goto/16 :goto_12b

    :cond_64
    :goto_64
    const/4 v10, 0x0

    const/4 v4, 0x3

    invoke-static {v10, v15, v4}, Lp3/I;->a(ILS3/o;I)Lp3/F;

    move-result-object v11

    const v4, 0x6e3c21fe

    invoke-virtual {v15, v4}, LS3/t;->Z(I)V

    invoke-virtual {v15}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v4

    sget-object v12, LS3/o;->Companion:LS3/n;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, LS3/n;->b:LS3/a0;

    if-ne v4, v12, :cond_85

    const/4 v4, 0x0

    invoke-static {v4}, LS3/A;->u(Ljava/lang/Object;)LS3/v0;

    move-result-object v4

    invoke-virtual {v15, v4}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_85
    check-cast v4, LS3/i0;

    invoke-virtual {v15, v10}, LS3/t;->q(Z)V

    const v13, 0x4c5de2

    invoke-virtual {v15, v13}, LS3/t;->Z(I)V

    and-int/lit8 v13, v2, 0x70

    const/16 v16, 0x1

    if-ne v13, v5, :cond_99

    move/from16 v17, v16

    goto :goto_9b

    :cond_99
    move/from16 v17, v10

    :goto_9b
    invoke-virtual {v15}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v5

    if-nez v17, :cond_a3

    if-ne v5, v12, :cond_ab

    :cond_a3
    new-instance v5, LO3/n1;

    invoke-direct {v5, v7, v1}, LO3/n1;-><init>(Lqf/c;I)V

    invoke-virtual {v15, v5}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_ab
    check-cast v5, Lqf/a;

    invoke-virtual {v15, v10}, LS3/t;->q(Z)V

    invoke-static {v11, v5, v15, v0}, Lme/b;->h(Lp3/F;Lqf/a;LS3/o;I)V

    new-instance v17, Lp3/b;

    sget v0, Lai/x/grok/image/ui/internal/a;->a:F

    invoke-direct/range {v17 .. v17}, Lp3/b;-><init>()V

    sget-object v0, Le4/t;->Companion:Le4/q;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/d;->d(Le4/t;F)Le4/t;

    move-result-object v18

    const v0, -0x48fade91

    invoke-virtual {v15, v0}, LS3/t;->Z(I)V

    and-int/lit16 v0, v2, 0x380

    if-ne v0, v9, :cond_cf

    move/from16 v0, v16

    goto :goto_d0

    :cond_cf
    move v0, v10

    :goto_d0
    and-int/lit8 v1, v2, 0xe

    if-eq v1, v3, :cond_e1

    and-int/lit8 v1, v2, 0x8

    if-eqz v1, :cond_df

    invoke-virtual {v15, v6}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_df

    goto :goto_e1

    :cond_df
    move v1, v10

    goto :goto_e3

    :cond_e1
    :goto_e1
    move/from16 v1, v16

    :goto_e3
    or-int/2addr v0, v1

    const/16 v1, 0x20

    if-ne v13, v1, :cond_e9

    goto :goto_eb

    :cond_e9
    move/from16 v16, v10

    :goto_eb
    or-int v0, v0, v16

    invoke-virtual {v15}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_f5

    if-ne v1, v12, :cond_106

    :cond_f5
    new-instance v9, LG6/h;

    const/4 v5, 0x3

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, LG6/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v9}, LS3/t;->k0(Ljava/lang/Object;)V

    move-object v1, v9

    :cond_106
    move-object/from16 v19, v1

    check-cast v19, Lqf/c;

    invoke-virtual {v15, v10}, LS3/t;->q(Z)V

    const/4 v0, 0x0

    const/16 v21, 0x30

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3f8

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object v14, v1

    move-object v1, v15

    move-object v15, v2

    move/from16 v17, v3

    move-object/from16 v18, v0

    move-object/from16 v20, v1

    invoke-static/range {v9 .. v23}, LH2/g;->l(Lp3/d;Le4/t;Lp3/F;Lm3/w0;ZLm3/m;Lm3/j;Li3/c0;ZLe3/t;Lqf/c;LS3/o;III)V

    :goto_12b
    invoke-virtual {v1}, LS3/t;->s()LS3/I0;

    move-result-object v9

    if-eqz v9, :cond_143

    new-instance v10, LB/p;

    const/16 v5, 0x16

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, LB/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v10, v9, LS3/I0;->d:Lqf/e;

    :cond_143
    return-void
.end method

.method public static final j0(LU/a1;Ljava/lang/String;Ljava/lang/String;)Ls/s0;
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ls/s0;

    iget-object v1, p0, LU/a1;->b:LU/i2;

    invoke-static {v1, p1}, LU9/c;->k0(LU/i2;Ljava/lang/String;)Ls/v0;

    move-result-object v5

    iget-object p1, p0, LU/a1;->c:LU/i2;

    invoke-static {p1, p2}, LU9/c;->k0(LU/i2;Ljava/lang/String;)Ls/v0;

    move-result-object v6

    iget-object v4, p0, LU/a1;->f:Ljava/lang/String;

    iget-object v7, p0, LU/a1;->g:Ljava/lang/String;

    iget-object v2, p0, LU/a1;->a:Ljava/lang/String;

    iget-object v3, p0, LU/a1;->d:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ls/s0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls/v0;Ls/v0;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final k(LS3/o;I)V
    .registers 13

    sget-object v0, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    check-cast p0, LS3/t;

    const v1, 0x23ee0afc

    invoke-virtual {p0, v1}, LS3/t;->b0(I)LS3/t;

    and-int/lit8 v1, p1, 0x6

    const/4 v2, 0x2

    if-nez v1, :cond_1a

    invoke-virtual {p0, v0}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x4

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    or-int/2addr v1, p1

    goto :goto_1b

    :cond_1a
    move v1, p1

    :goto_1b
    and-int/lit8 v1, v1, 0x3

    if-ne v1, v2, :cond_2b

    invoke-virtual {p0}, LS3/t;->B()Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_2b

    :cond_26
    invoke-virtual {p0}, LS3/t;->S()V

    goto/16 :goto_9f

    :cond_2b
    :goto_2b
    sget-object v1, Le4/t;->Companion:Le4/q;

    const/16 v3, 0x38

    int-to-float v3, v3

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/d;->l(Le4/t;F)Le4/t;

    move-result-object v1

    sget-object v3, Le4/e;->Companion:Le4/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Le4/c;->f:Le4/j;

    invoke-virtual {v0, v1, v3}, Landroidx/compose/foundation/layout/b;->a(Le4/t;Le4/e;)Le4/t;

    move-result-object v0

    sget-object v10, Lhd/a;->A:Lhd/b;

    sget-object v1, Ll4/A;->Companion:Ll4/z;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Ll4/A;->b:J

    const v1, 0x3e4ccccd  # 0.2f

    invoke-static {v3, v4, v1}, Ll4/A;->b(JF)J

    move-result-wide v4

    const/4 v1, 0x1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroidx/compose/foundation/layout/c;->i(Le4/t;FFI)Le4/t;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xc30

    const/16 v9, 0x10

    move-object v1, v10

    move-object v7, p0

    invoke-static/range {v1 .. v9}, Lcom/google/android/gms/internal/measurement/f2;->e(Lhd/b;Ljava/lang/String;Le4/t;JZLS3/o;II)V

    const v1, 0x7f110072

    invoke-static {p0, v1}, Lo8/n;->S(LS3/o;I)Ljava/lang/String;

    move-result-object v2

    sget-object v1, LSc/b;->a:LS3/E;

    invoke-virtual {p0, v1}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LSc/a;

    if-nez v1, :cond_8c

    sget-object v1, LSc/b;->b:LS3/x1;

    invoke-virtual {p0, v1}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LSc/c;

    sget-object v3, LNc/D;->a:LS3/E;

    invoke-virtual {p0, v3}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LNc/C;

    if-nez v3, :cond_88

    invoke-static {p0}, Lf7/v;->L(LS3/o;)LNc/C;

    move-result-object v3

    :cond_88
    invoke-interface {v1, v3, p0}, LSc/c;->a(LNc/C;LS3/o;)LSc/a;

    move-result-object v1

    :cond_8c
    iget-wide v3, v1, LSc/a;->c:J

    const v1, 0x3ecccccd  # 0.4f

    invoke-static {v3, v4, v1}, Ll4/A;->b(JF)J

    move-result-wide v4

    const/16 v9, 0x10

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move-object v3, v0

    move-object v7, p0

    invoke-static/range {v1 .. v9}, Lcom/google/android/gms/internal/measurement/f2;->e(Lhd/b;Ljava/lang/String;Le4/t;JZLS3/o;II)V

    :goto_9f
    invoke-virtual {p0}, LS3/t;->s()LS3/I0;

    move-result-object p0

    if-eqz p0, :cond_ad

    new-instance v0, Lio/intercom/android/sdk/views/compose/l;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lio/intercom/android/sdk/views/compose/l;-><init>(II)V

    iput-object v0, p0, LS3/I0;->d:Lqf/e;

    :cond_ad
    return-void
.end method

.method public static final k0(LU/i2;Ljava/lang/String;)Ls/v0;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    invoke-static {p1}, Lzf/s;->O0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_10

    :cond_f
    move-object p1, v0

    :goto_10
    if-nez p1, :cond_13

    goto :goto_15

    :cond_13
    :goto_13
    move-object v0, p1

    goto :goto_1e

    :cond_15
    :goto_15
    iget-object p1, p0, LU/i2;->b:Ljava/lang/String;

    invoke-static {p1}, Lzf/s;->O0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_13

    :cond_1e
    :goto_1e
    new-instance p1, Ls/v0;

    iget-object v1, p0, LU/i2;->a:Ljava/lang/String;

    iget-object p0, p0, LU/i2;->c:Ljava/lang/Integer;

    invoke-direct {p1, v1, v0, p0}, Ls/v0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p1
.end method

.method public static final l(LE4/b1;LS3/w;)LS3/z;
    .registers 3

    new-instance v0, LS3/z;

    invoke-direct {v0, p1, p0}, LS3/z;-><init>(LS3/w;LS3/a;)V

    return-object v0
.end method

.method public static final l0(LF3/e;LG3/r;LE4/A;)Ljava/lang/CharSequence;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget-object v3, p0, LF3/e;->Z:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_45

    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object v4, p1

    check-cast v4, LG3/Z;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xa

    if-ne v3, v4, :cond_20

    const/16 v4, 0x20

    goto :goto_29

    :cond_20
    const/16 v4, 0xd

    if-ne v3, v4, :cond_28

    const v4, 0xfeff

    goto :goto_29

    :cond_28
    move v4, v3

    :goto_29
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    if-eq v4, v3, :cond_40

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p2, v3, v6, v2}, LE4/A;->i(III)V

    const/4 v2, 0x1

    :cond_40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/2addr v1, v5

    goto :goto_7

    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_51

    move-object p0, p1

    :cond_51
    return-object p0
.end method

.method public static final m(Ljava/util/List;Ljava/util/List;Le4/t;LS3/o;I)V
    .registers 17

    move-object v8, p0

    move-object v9, p1

    const-string v0, "headers"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rows"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, p3

    check-cast v10, LS3/t;

    const v0, -0x55a46991

    invoke-virtual {v10, v0}, LS3/t;->b0(I)LS3/t;

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_25

    invoke-virtual {v10, p0}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x4

    goto :goto_22

    :cond_21
    const/4 v0, 0x2

    :goto_22
    or-int v0, p4, v0

    goto :goto_27

    :cond_25
    move/from16 v0, p4

    :goto_27
    and-int/lit8 v1, p4, 0x30

    if-nez v1, :cond_37

    invoke-virtual {v10, p1}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/16 v1, 0x20

    goto :goto_36

    :cond_34
    const/16 v1, 0x10

    :goto_36
    or-int/2addr v0, v1

    :cond_37
    or-int/lit16 v0, v0, 0x180

    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    if-ne v1, v2, :cond_4b

    invoke-virtual {v10}, LS3/t;->B()Z

    move-result v1

    if-nez v1, :cond_46

    goto :goto_4b

    :cond_46
    invoke-virtual {v10}, LS3/t;->S()V

    move-object v3, p2

    goto :goto_8f

    :cond_4b
    :goto_4b
    sget-object v11, Le4/t;->Companion:Le4/q;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lbf/v;->k0(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ/h;

    new-instance v4, LK/a;

    iget-object v5, v3, LJ/h;->b:Ljava/lang/String;

    iget-object v6, v3, LJ/h;->d:Ljava/util/List;

    iget-object v7, v3, LJ/h;->a:Ljava/lang/Integer;

    iget-object v3, v3, LJ/h;->c:Ljava/lang/String;

    invoke-direct {v4, v5, v3, v6, v7}, LK/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_79
    sget-object v1, LK/c;->a:LK/c;

    shl-int/lit8 v0, v0, 0x3

    and-int/lit8 v3, v0, 0x70

    or-int/lit8 v3, v3, 0x6

    and-int/lit16 v0, v0, 0x1c00

    or-int v7, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, p0

    move-object v3, v11

    move-object v6, v10

    invoke-static/range {v0 .. v7}, LKe/a;->j(LK/d;Ljava/util/List;Ljava/util/ArrayList;Le4/t;FFLS3/o;I)V

    move-object v3, v11

    :goto_8f
    invoke-virtual {v10}, LS3/t;->s()LS3/I0;

    move-result-object v6

    if-eqz v6, :cond_a2

    new-instance v7, LK/i;

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, LK/i;-><init>(Ljava/util/List;Ljava/util/List;Le4/t;II)V

    iput-object v7, v6, LS3/I0;->d:Lqf/e;

    :cond_a2
    return-void
.end method

.method public static final m0(LS3/a1;ILjava/lang/Integer;)Ljava/util/ArrayList;
    .registers 8

    new-instance v0, Ld4/h;

    invoke-direct {v0, p0}, Ld4/h;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, LS3/a1;->q(I)I

    move-result v1

    invoke-virtual {p0, p1}, LS3/a1;->a(I)LS3/b;

    move-result-object v2

    :goto_d
    if-ltz p1, :cond_2b

    iget-object v3, p0, LS3/a1;->a:LS3/b1;

    invoke-virtual {v3, p1}, LS3/b1;->p(I)LS3/T;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ld4/a;->d(LS3/T;Ljava/lang/Object;)V

    if-ltz v1, :cond_28

    invoke-virtual {p0, v1}, LS3/a1;->a(I)LS3/b;

    move-result-object p1

    invoke-virtual {p0, v1}, LS3/a1;->q(I)I

    move-result p2

    move-object v4, v2

    move-object v2, p1

    move p1, v1

    move v1, p2

    move-object p2, v4

    goto :goto_d

    :cond_28
    move p1, v1

    move-object p2, v2

    goto :goto_d

    :cond_2b
    iget-object p0, v0, Ld4/a;->x:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final n(Lqf/c;LS3/o;I)V
    .registers 15

    check-cast p1, LS3/t;

    const v0, 0x30c645c9

    invoke-virtual {p1, v0}, LS3/t;->b0(I)LS3/t;

    and-int/lit8 v0, p2, 0x6

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-nez v0, :cond_19

    invoke-virtual {p1, p0}, LS3/t;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    or-int/2addr v0, p2

    goto :goto_1a

    :cond_19
    move v0, p2

    :goto_1a
    and-int/lit8 v3, v0, 0x3

    if-ne v3, v1, :cond_29

    invoke-virtual {p1}, LS3/t;->B()Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_29

    :cond_25
    invoke-virtual {p1}, LS3/t;->S()V

    goto :goto_7b

    :cond_29
    :goto_29
    sget-object v1, LF4/P0;->h:LS3/x1;

    invoke-virtual {p1, v1}, LS3/t;->k(LS3/E0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc5/d;

    sget-object v3, Le4/t;->Companion:Le4/q;

    const v4, -0x615d173a

    invoke-virtual {p1, v4}, LS3/t;->Z(I)V

    invoke-virtual {p1, v1}, LS3/t;->g(Ljava/lang/Object;)Z

    move-result v4

    and-int/lit8 v0, v0, 0xe

    const/4 v5, 0x0

    if-ne v0, v2, :cond_44

    const/4 v0, 0x1

    goto :goto_45

    :cond_44
    move v0, v5

    :goto_45
    or-int/2addr v0, v4

    invoke-virtual {p1}, LS3/t;->M()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_55

    sget-object v0, LS3/o;->Companion:LS3/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LS3/n;->b:LS3/a0;

    if-ne v2, v0, :cond_5f

    :cond_55
    new-instance v2, LB/h;

    const/16 v0, 0x19

    invoke-direct {v2, v0, v1, p0}, LB/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, LS3/t;->k0(Ljava/lang/Object;)V

    :cond_5f
    check-cast v2, Lqf/c;

    invoke-virtual {p1, v5}, LS3/t;->q(Z)V

    invoke-static {v3, v2}, Landroidx/compose/ui/layout/b;->b(Le4/t;Lqf/c;)Le4/t;

    move-result-object v1

    sget-object v0, LQ0/e;->a:La4/d;

    sget-object v2, LQ0/e;->b:La4/d;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const v10, 0x180186

    const/16 v11, 0x1b8

    move-object v9, p1

    invoke-static/range {v0 .. v11}, Lcom/google/android/gms/internal/measurement/f2;->d(La4/d;Le4/t;Lqf/e;Lqf/e;Lqf/f;JZLm3/Q0;LS3/o;II)V

    :goto_7b
    invoke-virtual {p1}, LS3/t;->s()LS3/I0;

    move-result-object p1

    if-eqz p1, :cond_89

    new-instance v0, LQ0/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, LQ0/y;-><init>(Lqf/c;II)V

    iput-object v0, p1, LS3/I0;->d:Lqf/e;

    :cond_89
    return-void
.end method

.method public static n0(Lre/x;)V
    .registers 4

    const/4 v0, 0x1

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Lse/e;->b:Lkh/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v1, Lkh/a;->Z:I

    sget-object v2, Llh/b;->a:Ljava/lang/reflect/Constructor;

    if-ltz v1, :cond_59

    new-array v2, v1, [B

    invoke-static {v1, v2}, Llh/b;->a(I[B)V

    :try_start_16
    iget-object v1, p0, Lre/x;->c:Ljava/lang/String;

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    goto :goto_1d

    :cond_1c
    move v1, v0

    :goto_1d
    iget-object v2, p0, Lre/x;->e:Ljava/lang/Long;

    if-eqz v2, :cond_22

    add-int/2addr v1, v0

    :cond_22
    iget-object v2, p0, Lre/x;->f:[Lre/t;

    if-eqz v2, :cond_27

    add-int/2addr v1, v0

    :cond_27
    iget-object v2, p0, Lre/x;->g:Ln5/H;

    if-eqz v2, :cond_2c

    add-int/2addr v1, v0

    :cond_2c
    iget v2, p0, Lre/x;->b:I

    if-eqz v2, :cond_31

    add-int/2addr v1, v0

    :cond_31
    iget-object v2, p0, Lre/x;->d:Ljava/lang/String;

    if-eqz v2, :cond_36

    add-int/2addr v1, v0

    :cond_36
    iget-object p0, p0, Lre/x;->h:[Ljava/lang/Object;

    if-eqz p0, :cond_3d

    invoke-static {}, Lme/b;->G()V

    :cond_3d
    if-ltz v1, :cond_4b

    const/16 p0, 0x10

    const/4 v0, 0x0

    if-lt v1, p0, :cond_4a

    const/high16 p0, 0x10000

    if-ge v1, p0, :cond_49

    throw v0

    :cond_49
    throw v0

    :cond_4a
    throw v0

    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "map size must be >= 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_53} :catch_53

    :catch_53
    move-exception p0

    invoke-static {p0}, Lio/ably/lib/types/AblyException;->c(Ljava/lang/Throwable;)Lio/ably/lib/types/AblyException;

    move-result-object p0

    throw p0

    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "size must not be negative"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final o(IIIJ)J
    .registers 7

    invoke-static {p3, p4}, LP4/l0;->g(J)I

    move-result v0

    invoke-static {p3, p4}, LP4/l0;->f(J)I

    move-result v1

    if-ge v1, p0, :cond_b

    return-wide p3

    :cond_b
    if-gt v0, p0, :cond_17

    if-gt p1, v1, :cond_17

    sub-int/2addr p1, p0

    sub-int/2addr p2, p1

    if-ne v0, v1, :cond_14

    goto :goto_22

    :cond_14
    :goto_14
    add-int p0, v1, p2

    goto :goto_2c

    :cond_17
    if-le v0, p0, :cond_1e

    if-ge v1, p1, :cond_1e

    add-int/2addr p0, p2

    move v0, p0

    goto :goto_2c

    :cond_1e
    if-lt v0, p1, :cond_24

    sub-int/2addr p1, p0

    sub-int/2addr p2, p1

    :goto_22
    add-int/2addr v0, p2

    goto :goto_14

    :cond_24
    if-ge p0, v0, :cond_2c

    add-int v0, p0, p2

    sub-int/2addr p1, p0

    sub-int/2addr p2, p1

    add-int p0, p2, v1

    :cond_2c
    :goto_2c
    invoke-static {v0, p0}, Lbf/Q;->f(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static o0(I)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_15

    const/4 v1, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v1, :cond_13

    const/4 v1, 0x4

    if-eq p0, v0, :cond_12

    if-eq p0, v1, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    const/4 p0, 0x5

    return p0

    :cond_12
    return v1

    :cond_13
    return v0

    :cond_14
    return v1

    :cond_15
    return v0
.end method

.method public static final p(LXf/q;[Lqf/c;Lqf/c;)V
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LXf/b;

    if-eqz v0, :cond_62

    check-cast p0, LXf/b;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lqf/c;

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lkotlin/jvm/internal/C;->d(ILjava/lang/Object;)V

    const-string v0, "otherFormats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v1, :cond_41

    aget-object v3, p1, v2

    invoke-interface {p0}, LXf/b;->i()LXf/b;

    move-result-object v4

    invoke-interface {v3, v4}, Lqf/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, LXf/b;->d()Ln7/g;

    move-result-object v3

    new-instance v4, LZf/f;

    iget-object v3, v3, Ln7/g;->Y:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, LZf/f;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_41
    invoke-interface {p0}, LXf/b;->i()LXf/b;

    move-result-object p1

    invoke-interface {p2, p1}, Lqf/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, LXf/b;->d()Ln7/g;

    move-result-object p1

    new-instance p2, LZf/f;

    iget-object p1, p1, Ln7/g;->Y:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, LZf/f;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {p0}, LXf/b;->d()Ln7/g;

    move-result-object p0

    new-instance p1, LZf/b;

    invoke-direct {p1, p2, v0}, LZf/b;-><init>(LZf/f;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Ln7/g;->t(LZf/k;)V

    return-void

    :cond_62
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "impossible"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p0(Landroid/content/Context;)LV9/c;
    .registers 6

    invoke-static {p0}, Lu9/y;->g(Ljava/lang/Object;)V

    const-string v0, "null"

    const-string v1, "preferredRenderer: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, LU9/c;->d:LV9/c;

    if-nez v0, :cond_b6

    sget v0, Lr9/g;->e:I

    const v0, 0xcc77c0

    invoke-static {p0, v0}, Lr9/h;->b(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_b0

    const/4 v0, 0x0

    invoke-static {p0, v0}, LU9/c;->r0(Landroid/content/Context;I)LV9/c;

    move-result-object v2

    sput-object v2, LU9/c;->d:LV9/c;

    :try_start_26
    invoke-virtual {v2}, LK9/a;->P()Landroid/os/Parcel;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4}, LK9/a;->N(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_37} :catch_a9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7a

    const-string v3, "com.google.android.apps.photos"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    const-string v2, "early loading native code"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4b
    sget-object v2, LU9/c;->d:LV9/c;

    invoke-static {p0, v0}, LU9/c;->q0(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v3

    new-instance v4, LC9/b;

    invoke-direct {v4, v3}, LC9/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2}, LK9/a;->P()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v3, v4}, LR9/f;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v4, 0xb

    invoke-virtual {v2, v3, v4}, LK9/a;->Q(Landroid/os/Parcel;I)V
    :try_end_62
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4b .. :try_end_62} :catch_6a
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_62} :catch_63

    goto :goto_7f

    :catch_63
    move-exception p0

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_6a
    const-string v2, "Caught UnsatisfiedLinkError attempting to load the LATEST renderer\'s native library. Attempting to use the LEGACY renderer instead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-object v1, LU9/c;->c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p0, v1}, LU9/c;->r0(Landroid/content/Context;I)LV9/c;

    move-result-object v1

    sput-object v1, LU9/c;->d:LV9/c;

    goto :goto_7f

    :cond_7a
    const-string v2, "not early loading native code"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7f
    :try_start_7f
    sget-object v1, LU9/c;->d:LV9/c;

    invoke-static {p0, v0}, LU9/c;->q0(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v0, LC9/b;

    invoke-direct {v0, p0}, LC9/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, LK9/a;->P()Landroid/os/Parcel;

    move-result-object p0

    invoke-static {p0, v0}, LR9/f;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const v0, 0x12238e0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x6

    invoke-virtual {v1, p0, v0}, LK9/a;->Q(Landroid/os/Parcel;I)V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_9f} :catch_a2

    sget-object p0, LU9/c;->d:LV9/c;

    return-object p0

    :catch_a2
    move-exception p0

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_a9
    move-exception p0

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_b0
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw p0

    :cond_b6
    return-object v0
.end method

.method public static final q(ILjava/lang/StringBuilder;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_14

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p0, -0x1

    if-ge v0, v1, :cond_11

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method

.method public static q0(Landroid/content/Context;I)Landroid/content/Context;
    .registers 9

    sget-object v0, LU9/c;->c:Landroid/content/Context;

    if-nez v0, :cond_57

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    const-string p1, "com.google.android.gms.maps_legacy_dynamite"

    goto :goto_c

    :cond_a
    const-string p1, "com.google.android.gms.maps_core_dynamite"

    :goto_c
    :try_start_c
    sget-object v0, LD9/d;->b:Llb/b;

    invoke-static {p0, v0, p1}, LD9/d;->c(Landroid/content/Context;LD9/c;Ljava/lang/String;)LD9/d;

    move-result-object v0

    iget-object p0, v0, LD9/d;->a:Landroid/content/Context;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_4a

    :catch_15
    move-exception v0

    const-string v1, "com.google.android.gms.maps_dynamite"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "com.google.android.gms"

    const-string v5, "Failed to load maps module, use pre-Chimera"

    const-string v6, "c"

    if-nez p1, :cond_41

    :try_start_26
    const-string p1, "Attempting to load maps_dynamite again."

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, LD9/d;->b:Llb/b;

    invoke-static {p0, p1, v1}, LD9/d;->c(Landroid/content/Context;LD9/c;Ljava/lang/String;)LD9/d;

    move-result-object p1

    iget-object p0, p1, LD9/d;->a:Landroid/content/Context;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_33} :catch_34

    goto :goto_4a

    :catch_34
    move-exception p1

    invoke-static {v6, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget p1, Lr9/g;->e:I

    :try_start_3a
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3a .. :try_end_3e} :catch_3f

    goto :goto_4a

    :catch_3f
    move-object p0, v2

    goto :goto_4a

    :cond_41
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget p1, Lr9/g;->e:I

    :try_start_46
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_4a} :catch_3f

    :goto_4a
    sput-object p0, LU9/c;->c:Landroid/content/Context;

    if-eqz p0, :cond_4f

    return-object p0

    :cond_4f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to load maps module, maps container context is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    return-object v0
.end method

.method public static final r(LZd/w;F)LZd/w;
    .registers 6

    iget-object v0, p0, LZd/w;->c:Ll4/t;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_e

    :cond_c
    sget p1, LZd/e;->a:F

    :goto_e
    const/4 v1, 0x1

    int-to-float v1, v1

    const/16 v2, 0x48

    int-to-float v2, v2

    div-float/2addr p1, v2

    add-float/2addr p1, v1

    iget-wide v1, p0, LZd/w;->a:J

    invoke-static {v1, v2}, Ll4/A;->d(J)F

    move-result v3

    mul-float/2addr v3, p1

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-static {v3, p1}, Lra/b;->V(FF)F

    move-result p1

    invoke-static {v1, v2, p1}, Ll4/A;->b(JF)J

    move-result-wide v1

    new-instance p1, LZd/w;

    iget p0, p0, LZd/w;->b:I

    invoke-direct {p1, v1, v2, p0, v0}, LZd/w;-><init>(JILl4/t;)V

    return-object p1
.end method

.method public static r0(Landroid/content/Context;I)LV9/c;
    .registers 4

    const-string v0, "c"

    const-string v1, "Making Creator dynamically"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, LU9/c;->q0(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string p1, "com.google.android.gms.maps.internal.CreatorImpl"

    :try_start_11
    invoke-static {p0}, Lu9/y;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_18} :catch_5e

    :try_start_18
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/InstantiationException; {:try_start_18 .. :try_end_1c} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_1c} :catch_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_1c} :catch_5e

    check-cast p0, Landroid/os/IBinder;

    if-eqz p0, :cond_34

    const-string p1, "com.google.android.gms.maps.internal.ICreator"

    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LV9/c;

    if-eqz v1, :cond_2d

    check-cast v0, LV9/c;

    goto :goto_33

    :cond_2d
    new-instance v0, LV9/c;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, LK9/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_33
    return-object v0

    :cond_34
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to load maps module, IBinder for com.google.android.gms.maps.internal.CreatorImpl is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3c
    move-exception p1

    :try_start_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to call the default constructor of "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4d
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to instantiate the dynamic class "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3d .. :try_end_5e} :catch_5e

    :catch_5e
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to find dynamic class com.google.android.gms.maps.internal.CreatorImpl"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final s(LS3/a1;)Ljava/util/List;
    .registers 5

    iget-boolean v0, p0, LS3/a1;->f:Z

    if-nez v0, :cond_33

    iget v0, p0, LS3/a1;->c:I

    if-eqz v0, :cond_33

    new-instance v0, Ld4/h;

    invoke-direct {v0, p0}, Ld4/h;-><init>(Ljava/lang/Object;)V

    iget v1, p0, LS3/a1;->i:I

    iget v2, p0, LS3/a1;->l:I

    iget-object v3, p0, LS3/a1;->b:[I

    invoke-static {v1, v3}, LS3/d1;->c(I[I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1c
    if-ltz v1, :cond_30

    iget-object v3, p0, LS3/a1;->a:LS3/b1;

    invoke-virtual {v3, v1}, LS3/b1;->p(I)LS3/T;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ld4/a;->d(LS3/T;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, LS3/a1;->a(I)LS3/b;

    move-result-object v2

    invoke-virtual {p0, v1}, LS3/a1;->q(I)I

    move-result v1

    goto :goto_1c

    :cond_30
    iget-object p0, v0, Ld4/a;->x:Ljava/util/ArrayList;

    return-object p0

    :cond_33
    sget-object p0, Lbf/C;->x:Lbf/C;

    return-object p0
.end method

.method public static final t(LS3/f1;Ljava/lang/Object;ILjava/lang/Integer;)Ljava/util/List;
    .registers 8

    iget-boolean v0, p0, LS3/f1;->w:Z

    if-nez v0, :cond_62

    invoke-virtual {p0}, LS3/f1;->p()I

    move-result v0

    if-eqz v0, :cond_62

    new-instance v0, Ld4/h;

    invoke-direct {v0, p0}, Ld4/h;-><init>(Ljava/lang/Object;)V

    if-eqz p3, :cond_16

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_20

    :cond_16
    iget p3, p0, LS3/f1;->v:I

    if-gez p3, :cond_20

    iget-object p3, p0, LS3/f1;->b:[I

    invoke-virtual {p0, p2, p3}, LS3/f1;->D(I[I)I

    move-result p3

    :cond_20
    :goto_20
    if-nez p1, :cond_44

    iget p1, p0, LS3/f1;->i:I

    iget-object v1, p0, LS3/f1;->b:[I

    invoke-virtual {p0, p2}, LS3/f1;->r(I)I

    move-result v2

    invoke-virtual {p0, v2, v1}, LS3/f1;->M(I[I)I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, LS3/f1;->s:LZ2/C;

    if-eqz v1, :cond_3e

    invoke-virtual {v1, p2}, LZ2/p;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZ2/L;

    if-eqz v1, :cond_3e

    iget v1, v1, LZ2/L;->b:I

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_44
    :goto_44
    if-ltz p2, :cond_5f

    invoke-virtual {p0, p2}, LS3/f1;->N(I)LS3/T;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ld4/a;->d(LS3/T;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, LS3/f1;->b(I)LS3/b;

    move-result-object p1

    if-ltz p3, :cond_5d

    iget-object p2, p0, LS3/f1;->b:[I

    invoke-virtual {p0, p3, p2}, LS3/f1;->D(I[I)I

    move-result p2

    move v3, p3

    move p3, p2

    move p2, v3

    goto :goto_44

    :cond_5d
    move p2, p3

    goto :goto_44

    :cond_5f
    iget-object p0, v0, Ld4/a;->x:Ljava/util/ArrayList;

    return-object p0

    :cond_62
    sget-object p0, Lbf/C;->x:Lbf/C;

    return-object p0
.end method

.method public static u(LS3/f1;)Ljava/util/List;
    .registers 3

    iget v0, p0, LS3/f1;->t:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, LU9/c;->t(LS3/f1;Ljava/lang/Object;ILjava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final v(IILG3/X0;)J
    .registers 12

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    const/4 v3, -0x1

    if-ne p0, v3, :cond_10

    int-to-long p0, p1

    shl-long/2addr p0, v2

    int-to-long v2, v3

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0

    :cond_10
    const/4 v4, 0x1

    if-le p0, p1, :cond_15

    move p1, v4

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    invoke-virtual {p2, p0}, LG3/X0;->g(I)J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, LG3/X0;->i(J)J

    move-result-wide v7

    invoke-static {v5, v6}, LP4/l0;->d(J)Z

    move-result p2

    if-eqz p2, :cond_2d

    invoke-static {v7, v8}, LP4/l0;->d(J)Z

    move-result p2

    if-eqz p2, :cond_2d

    sget-object p2, LG3/M;->x:LG3/M;

    goto :goto_4d

    :cond_2d
    invoke-static {v5, v6}, LP4/l0;->d(J)Z

    move-result p2

    if-nez p2, :cond_3c

    invoke-static {v7, v8}, LP4/l0;->d(J)Z

    move-result p2

    if-nez p2, :cond_3c

    sget-object p2, LG3/M;->Z:LG3/M;

    goto :goto_4d

    :cond_3c
    invoke-static {v5, v6}, LP4/l0;->d(J)Z

    move-result p2

    if-eqz p2, :cond_4b

    invoke-static {v7, v8}, LP4/l0;->d(J)Z

    move-result p2

    if-nez p2, :cond_4b

    sget-object p2, LG3/M;->Y:LG3/M;

    goto :goto_4d

    :cond_4b
    sget-object p2, LG3/M;->w0:LG3/M;

    :goto_4d
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_ab

    if-eq p2, v4, :cond_7d

    const/4 v4, 0x2

    if-eq p2, v4, :cond_67

    const/4 p1, 0x3

    if-ne p2, p1, :cond_61

    int-to-long p0, p0

    shl-long/2addr p0, v2

    int-to-long v2, v3

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    goto :goto_b6

    :cond_61
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_67
    if-eqz p1, :cond_73

    and-long p0, v7, v0

    long-to-int p0, p0

    sget-object p1, LG3/Y0;->x:LG3/Y0;

    invoke-static {p0, p1}, LH2/g;->G(ILG3/Y0;)J

    move-result-wide p0

    goto :goto_b6

    :cond_73
    shr-long p0, v7, v2

    long-to-int p0, p0

    sget-object p1, LG3/Y0;->Y:LG3/Y0;

    invoke-static {p0, p1}, LH2/g;->G(ILG3/Y0;)J

    move-result-wide p0

    goto :goto_b6

    :cond_7d
    if-eqz p1, :cond_95

    shr-long p1, v7, v2

    long-to-int p1, p1

    if-ne p0, p1, :cond_8b

    sget-object p1, LG3/Y0;->x:LG3/Y0;

    invoke-static {p0, p1}, LH2/g;->G(ILG3/Y0;)J

    move-result-wide p0

    goto :goto_b6

    :cond_8b
    and-long p0, v7, v0

    long-to-int p0, p0

    sget-object p1, LG3/Y0;->Y:LG3/Y0;

    invoke-static {p0, p1}, LH2/g;->G(ILG3/Y0;)J

    move-result-wide p0

    goto :goto_b6

    :cond_95
    and-long p1, v7, v0

    long-to-int p1, p1

    if-ne p0, p1, :cond_a1

    sget-object p1, LG3/Y0;->Y:LG3/Y0;

    invoke-static {p0, p1}, LH2/g;->G(ILG3/Y0;)J

    move-result-wide p0

    goto :goto_b6

    :cond_a1
    shr-long p0, v7, v2

    long-to-int p0, p0

    sget-object p1, LG3/Y0;->x:LG3/Y0;

    invoke-static {p0, p1}, LH2/g;->G(ILG3/Y0;)J

    move-result-wide p0

    goto :goto_b6

    :cond_ab
    if-eqz p1, :cond_b0

    sget-object p1, LG3/Y0;->x:LG3/Y0;

    goto :goto_b2

    :cond_b0
    sget-object p1, LG3/Y0;->Y:LG3/Y0;

    :goto_b2
    invoke-static {p0, p1}, LH2/g;->G(ILG3/Y0;)J

    move-result-wide p0

    :goto_b6
    return-wide p0
.end method

.method public static final z(LXf/q;C)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, LXf/q;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract c0(Lh5/f;Lh5/f;)V
.end method

.method public abstract d0(Lh5/f;Ljava/lang/Thread;)V
.end method

.method public abstract w(Lh5/g;Lh5/c;Lh5/c;)Z
.end method

.method public abstract x(Lh5/g;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract y(Lh5/g;Lh5/f;Lh5/f;)Z
.end method
