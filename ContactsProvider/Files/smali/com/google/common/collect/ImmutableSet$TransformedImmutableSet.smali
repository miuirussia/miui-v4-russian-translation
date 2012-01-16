.class abstract Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableSet.java"


# instance fields
.field final hashCode:I

.field final source:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 363
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    .line 364
    iput p2, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->hashCode:I

    .line 365
    return-void
.end method


# virtual methods
.method abstract B(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method Y()Z
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->hashCode:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->s()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1

    .prologue
    .line 378
    new-instance v0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;-><init>(Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->size()I

    move-result v0

    .line 394
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 395
    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 402
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 403
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 396
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 397
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0

    .line 405
    :cond_2
    return-object p1
.end method
