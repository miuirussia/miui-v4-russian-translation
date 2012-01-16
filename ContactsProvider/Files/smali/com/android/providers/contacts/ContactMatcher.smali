.class public Lcom/android/providers/contacts/ContactMatcher;
.super Ljava/lang/Object;
.source "ContactMatcher.java"


# static fields
.field private static st:[I

.field private static su:[I


# instance fields
.field private final sv:Ljava/util/HashMap;

.field private final sw:Ljava/util/ArrayList;

.field private sx:I

.field private final sy:Lcom/android/providers/contacts/NameDistance;

.field private final sz:Lcom/android/providers/contacts/NameDistance;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v5, 0x3c

    const/16 v4, 0x32

    .line 89
    const/16 v0, 0x19

    new-array v0, v0, [I

    sput-object v0, Lcom/android/providers/contacts/ContactMatcher;->st:[I

    .line 91
    const/16 v0, 0x19

    new-array v0, v0, [I

    sput-object v0, Lcom/android/providers/contacts/ContactMatcher;->su:[I

    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x63

    const/16 v3, 0x63

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactMatcher;->a(IIII)V

    .line 105
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/16 v2, 0x5a

    const/16 v3, 0x5a

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactMatcher;->a(IIII)V

    .line 107
    const/16 v0, 0x50

    invoke-static {v6, v6, v4, v0}, Lcom/android/providers/contacts/ContactMatcher;->a(IIII)V

    .line 110
    const/16 v0, 0x1e

    invoke-static {v6, v8, v0, v5}, Lcom/android/providers/contacts/ContactMatcher;->a(IIII)V

    .line 112
    invoke-static {v6, v7, v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->a(IIII)V

    .line 115
    invoke-static {v8, v8, v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->a(IIII)V

    .line 117
    invoke-static {v8, v6, v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->a(IIII)V

    .line 119
    invoke-static {v8, v7, v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->a(IIII)V

    .line 122
    invoke-static {v7, v7, v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->a(IIII)V

    .line 124
    invoke-static {v7, v6, v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->a(IIII)V

    .line 126
    invoke-static {v7, v8, v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->a(IIII)V

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sv:Ljava/util/HashMap;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sw:Ljava/util/ArrayList;

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sx:I

    .line 244
    new-instance v0, Lcom/android/providers/contacts/NameDistance;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameDistance;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sy:Lcom/android/providers/contacts/NameDistance;

    .line 245
    new-instance v0, Lcom/android/providers/contacts/NameDistance;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/NameDistance;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sz:Lcom/android/providers/contacts/NameDistance;

    return-void
.end method

.method private F(J)Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    .locals 3
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sv:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 249
    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/providers/contacts/ContactMatcher;->sx:I

    if-le v0, v1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sw:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/ContactMatcher;->sx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 252
    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->p(J)V

    .line 257
    :goto_0
    iget v1, p0, Lcom/android/providers/contacts/ContactMatcher;->sx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/providers/contacts/ContactMatcher;->sx:I

    .line 258
    iget-object v1, p0, Lcom/android/providers/contacts/ContactMatcher;->sv:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_0
    return-object v0

    .line 254
    :cond_1
    new-instance v0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    invoke-direct {v0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;-><init>(J)V

    .line 255
    iget-object v1, p0, Lcom/android/providers/contacts/ContactMatcher;->sw:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static a(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    mul-int/lit8 v0, p1, 0x5

    add-int/2addr v0, p0

    .line 136
    sget-object v1, Lcom/android/providers/contacts/ContactMatcher;->st:[I

    aput p2, v1, v0

    .line 137
    sget-object v1, Lcom/android/providers/contacts/ContactMatcher;->su:[I

    aput p3, v1, v0

    .line 138
    return-void
.end method

.method private b(JI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 333
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher;->F(J)Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->O(I)V

    .line 334
    return-void
.end method

.method private c(JI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 337
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher;->F(J)Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->P(I)V

    .line 338
    return-void
.end method

.method private static l(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 145
    mul-int/lit8 v0, p1, 0x5

    add-int/2addr v0, p0

    .line 146
    sget-object v1, Lcom/android/providers/contacts/ContactMatcher;->st:[I

    aget v0, v1, v0

    return v0
.end method

.method private static m(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    mul-int/lit8 v0, p1, 0x5

    add-int/2addr v0, p0

    .line 155
    sget-object v1, Lcom/android/providers/contacts/ContactMatcher;->su:[I

    aget v0, v1, v0

    return v0
.end method


# virtual methods
.method public G(J)V
    .locals 1
    .parameter

    .prologue
    .line 267
    const/16 v0, 0x64

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/ContactMatcher;->b(JI)V

    .line 268
    return-void
.end method

.method public H(J)V
    .locals 1
    .parameter

    .prologue
    .line 321
    const/16 v0, 0x47

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/ContactMatcher;->c(JI)V

    .line 322
    return-void
.end method

.method public I(J)V
    .locals 1
    .parameter

    .prologue
    .line 325
    const/16 v0, 0x47

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/ContactMatcher;->c(JI)V

    .line 326
    return-void
.end method

.method public J(J)V
    .locals 1
    .parameter

    .prologue
    .line 329
    const/16 v0, 0x47

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/ContactMatcher;->c(JI)V

    .line 330
    return-void
.end method

.method public K(J)V
    .locals 1
    .parameter

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher;->F(J)Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->bU()V

    .line 342
    return-void
.end method

.method public L(J)V
    .locals 1
    .parameter

    .prologue
    .line 345
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher;->F(J)Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->bV()V

    .line 346
    return-void
.end method

.method public a(JILjava/lang/String;ILjava/lang/String;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 279
    invoke-static {p3, p5}, Lcom/android/providers/contacts/ContactMatcher;->m(II)I

    move-result v3

    .line 280
    if-nez v3, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-direct {p0, p1, p2, v3}, Lcom/android/providers/contacts/ContactMatcher;->b(JI)V

    goto :goto_0

    .line 289
    :cond_2
    if-eqz p7, :cond_0

    .line 293
    invoke-static {p3, p5}, Lcom/android/providers/contacts/ContactMatcher;->l(II)I

    move-result v4

    .line 294
    if-eq v4, v3, :cond_0

    .line 298
    invoke-static {p4}, Lcom/android/providers/contacts/Hex;->n(Ljava/lang/String;)[B

    move-result-object v5

    .line 299
    invoke-static {p6}, Lcom/android/providers/contacts/Hex;->n(Ljava/lang/String;)[B

    move-result-object v6

    .line 301
    if-ne p7, v2, :cond_4

    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sy:Lcom/android/providers/contacts/NameDistance;

    .line 305
    :goto_1
    invoke-virtual {v0, v5, v6}, Lcom/android/providers/contacts/NameDistance;->b([B[B)F

    move-result v5

    .line 306
    if-eq p3, v7, :cond_3

    if-ne p5, v7, :cond_5

    :cond_3
    move v0, v2

    .line 308
    :goto_2
    if-eqz v0, :cond_6

    const v0, 0x3f733333

    .line 311
    :goto_3
    cmpl-float v0, v5, v0

    if-lez v0, :cond_7

    .line 312
    int-to-float v0, v4

    sub-int v1, v3, v4

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 317
    :goto_4
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/ContactMatcher;->b(JI)V

    goto :goto_0

    .line 301
    :cond_4
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sz:Lcom/android/providers/contacts/NameDistance;

    goto :goto_1

    :cond_5
    move v0, v1

    .line 306
    goto :goto_2

    .line 308
    :cond_6
    const v0, 0x3f51eb85

    goto :goto_3

    :cond_7
    move v0, v1

    .line 314
    goto :goto_4
.end method

.method public aC(I)Ljava/util/List;
    .locals 5
    .parameter

    .prologue
    .line 361
    const/4 v1, 0x0

    .line 363
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sx:I

    if-ge v2, v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sw:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 365
    invoke-static {v0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->b(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 369
    :cond_0
    invoke-static {v0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->c(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I

    move-result v3

    .line 370
    if-lt v3, p1, :cond_2

    .line 371
    if-nez v1, :cond_1

    .line 372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 374
    :cond_1
    invoke-static {v0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->d(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_2
    const/4 v3, -0x1

    invoke-static {v0, v3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->a(Lcom/android/providers/contacts/ContactMatcher$MatchScore;I)I

    goto :goto_1

    .line 378
    :cond_3
    return-object v1
.end method

.method public aD(I)Ljava/util/List;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 420
    mul-int/lit16 v4, p1, 0x3e8

    .line 421
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sw:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/ContactMatcher;->sx:I

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 422
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v1, v2

    move v3, v2

    .line 424
    :goto_0
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sx:I

    if-ge v1, v0, :cond_0

    .line 425
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 426
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->bW()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 427
    add-int/lit8 v3, v3, 0x1

    .line 424
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 433
    :cond_0
    invoke-interface {v5, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sv:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 350
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sx:I

    .line 351
    return-void
.end method

.method public d(IZ)J
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, -0x1

    const/4 v0, 0x0

    .line 386
    move v1, v0

    move v2, v0

    move-wide v3, v5

    .line 388
    :goto_0
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sx:I

    if-ge v1, v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 390
    invoke-static {v0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->b(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 388
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 394
    :cond_1
    invoke-static {v0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->e(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 395
    invoke-static {v0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->d(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J

    move-result-wide v3

    .line 413
    :cond_2
    :goto_2
    return-wide v3

    .line 398
    :cond_3
    invoke-static {v0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->f(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I

    move-result v7

    .line 399
    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 400
    invoke-static {v0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->c(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I

    move-result v7

    .line 403
    :cond_4
    if-lt v7, p1, :cond_0

    .line 404
    cmp-long v8, v3, v5

    if-eqz v8, :cond_5

    if-nez p2, :cond_5

    .line 405
    const-wide/16 v3, -0x2

    goto :goto_2

    .line 407
    :cond_5
    if-le v7, v2, :cond_0

    .line 408
    invoke-static {v0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->d(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J

    move-result-wide v3

    move v2, v7

    .line 409
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->sw:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/providers/contacts/ContactMatcher;->sx:I

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
