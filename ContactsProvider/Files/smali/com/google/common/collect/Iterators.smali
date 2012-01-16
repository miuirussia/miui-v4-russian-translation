.class public final Lcom/google/common/collect/Iterators;
.super Ljava/lang/Object;
.source "Iterators.java"


# static fields
.field static final gj:Lcom/google/common/collect/UnmodifiableIterator;

.field private static final gk:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/common/collect/Iterators$1;

    invoke-direct {v0}, Lcom/google/common/collect/Iterators$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/Iterators;->gj:Lcom/google/common/collect/UnmodifiableIterator;

    .line 76
    new-instance v0, Lcom/google/common/collect/Iterators$2;

    invoke-direct {v0}, Lcom/google/common/collect/Iterators$2;-><init>()V

    sput-object v0, Lcom/google/common/collect/Iterators;->gk:Ljava/util/Iterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .parameter

    .prologue
    .line 106
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/google/common/collect/Iterators$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$3;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static a(Ljava/util/Iterator;I)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 544
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;IZ)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Iterator;IZ)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 570
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 572
    new-instance v0, Lcom/google/common/collect/Iterators$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/Iterators$6;-><init>(Ljava/util/Iterator;IZ)V

    return-object v0

    .line 571
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Iterator;Ljava/lang/Class;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 628
    invoke-static {p1}, Lcom/google/common/base/Predicates;->c(Ljava/lang/Class;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method static a([Ljava/lang/Object;II)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 859
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 860
    add-int v0, p1, p2

    .line 863
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/common/base/Preconditions;->a(III)V

    .line 867
    new-instance v1, Lcom/google/common/collect/Iterators$11;

    invoke-direct {v1, p1, v0, p0}, Lcom/google/common/collect/Iterators$11;-><init>(II[Ljava/lang/Object;)V

    return-object v1

    .line 859
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 721
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    new-instance v0, Lcom/google/common/collect/Iterators$8;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterators$8;-><init>(Ljava/util/Iterator;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 429
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Iterator;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->e(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 326
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const/4 v0, 0x0

    .line 328
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 331
    :cond_0
    return v0
.end method

.method public static a(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/4 v0, 0x0

    .line 189
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 192
    const/4 v0, 0x1

    goto :goto_0

    .line 195
    :cond_1
    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 136
    if-nez p1, :cond_1

    .line 137
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 149
    :goto_0
    return v0

    .line 143
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 149
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/4 v0, 0x0

    .line 165
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 168
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    return v0
.end method

.method public static b(Ljava/util/Iterator;)I
    .locals 2
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return v0
.end method

.method public static b(Ljava/util/Iterator;I)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 565
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;IZ)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 599
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    new-instance v0, Lcom/google/common/collect/Iterators$7;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterators$7;-><init>(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static b(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/4 v0, 0x0

    .line 211
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 214
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    return v0
.end method

.method public static c(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 251
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    const-string v0, "[]"

    .line 259
    :goto_0
    return-object v0

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 259
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 638
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 641
    invoke-interface {p1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    const/4 v0, 0x1

    .line 645
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cd()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/common/collect/Iterators;->gj:Lcom/google/common/collect/UnmodifiableIterator;

    return-object v0
.end method

.method static ce()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/google/common/collect/Iterators;->gk:Ljava/util/Iterator;

    return-object v0
.end method

.method public static d(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 270
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 271
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    return-object v0

    .line 275
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected one element but was: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    const-string v0, ", ..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_2
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 1
    .parameter

    .prologue
    .line 374
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    new-instance v0, Lcom/google/common/collect/Iterators$4;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$4;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs e([Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .parameter

    .prologue
    .line 825
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    new-instance v0, Lcom/google/common/collect/Iterators$10;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$10;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .parameter

    .prologue
    .line 497
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    new-instance v0, Lcom/google/common/collect/Iterators$5;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$5;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static f(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .parameter

    .prologue
    .line 795
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    new-instance v0, Lcom/google/common/collect/Iterators$9;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$9;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static s(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .parameter

    .prologue
    .line 889
    new-instance v0, Lcom/google/common/collect/Iterators$12;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$12;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
