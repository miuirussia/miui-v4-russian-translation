.class public Lcom/android/vcard/VCardConfig;
.super Ljava/lang/Object;
.source "VCardConfig.java"


# static fields
.field static bu:Ljava/lang/String;

.field public static bv:I

.field private static final bw:Ljava/util/Map;

.field private static final bx:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x38000008

    const v5, 0x18000008

    const v4, -0x3ffffff7

    const v3, -0x3ffffff8

    const/high16 v2, -0x4000

    .line 280
    const-string v0, "v21_generic"

    sput-object v0, Lcom/android/vcard/VCardConfig;->bu:Ljava/lang/String;

    .line 385
    sput v2, Lcom/android/vcard/VCardConfig;->bv:I

    .line 391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardConfig;->bw:Ljava/util/Map;

    .line 392
    sget-object v0, Lcom/android/vcard/VCardConfig;->bw:Ljava/util/Map;

    sget-object v1, Lcom/android/vcard/VCardConfig;->bu:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/android/vcard/VCardConfig;->bw:Ljava/util/Map;

    const-string v1, "v30_generic"

    const v2, -0x3fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/android/vcard/VCardConfig;->bw:Ljava/util/Map;

    const-string v1, "v21_europe"

    const v2, -0x3ffffffc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/android/vcard/VCardConfig;->bw:Ljava/util/Map;

    const-string v1, "v30_europe"

    const v2, -0x3ffffffb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/android/vcard/VCardConfig;->bw:Ljava/util/Map;

    const-string v1, "v21_japanese_utf8"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/android/vcard/VCardConfig;->bw:Ljava/util/Map;

    const-string v1, "v30_japanese_utf8"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/android/vcard/VCardConfig;->bw:Ljava/util/Map;

    const-string v1, "v21_japanese_mobile"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/android/vcard/VCardConfig;->bw:Ljava/util/Map;

    const-string v1, "docomo"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardConfig;->bx:Ljava/util/Set;

    .line 402
    sget-object v0, Lcom/android/vcard/VCardConfig;->bx:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lcom/android/vcard/VCardConfig;->bx:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lcom/android/vcard/VCardConfig;->bx:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lcom/android/vcard/VCardConfig;->bx:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 488
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 489
    return-void
.end method

.method public static i(I)Z
    .locals 1
    .parameter

    .prologue
    .line 421
    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 425
    and-int/lit8 v1, p0, 0x3

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k(I)Z
    .locals 2
    .parameter

    .prologue
    .line 429
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l(I)Z
    .locals 1
    .parameter

    .prologue
    .line 433
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->j(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m(I)I
    .locals 1
    .parameter

    .prologue
    .line 437
    and-int/lit8 v0, p0, 0xc

    return v0
.end method

.method public static n(I)Z
    .locals 1
    .parameter

    .prologue
    .line 441
    const/high16 v0, -0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static o(I)Z
    .locals 1
    .parameter

    .prologue
    .line 445
    const/high16 v0, 0x4000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static p(I)Z
    .locals 1
    .parameter

    .prologue
    .line 453
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static q(I)Z
    .locals 1
    .parameter

    .prologue
    .line 458
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->j(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x400

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static r(I)Z
    .locals 2
    .parameter

    .prologue
    .line 469
    sget-object v0, Lcom/android/vcard/VCardConfig;->bx:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static s(I)Z
    .locals 1
    .parameter

    .prologue
    .line 473
    const/high16 v0, 0x200

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static t(I)Z
    .locals 1
    .parameter

    .prologue
    .line 477
    const/high16 v0, 0x800

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static u(I)Z
    .locals 1
    .parameter

    .prologue
    .line 481
    const v0, 0x38000008

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(I)Z
    .locals 1
    .parameter

    .prologue
    .line 485
    const/high16 v0, 0x2000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
