.class Lcom/google/common/collect/ImmutableSortedMap$EntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableSortedMap.java"


# instance fields
.field final transient map:Lcom/google/common/collect/ImmutableSortedMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 465
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->map:Lcom/google/common/collect/ImmutableSortedMap;

    .line 466
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 477
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 478
    check-cast p1, Ljava/util/Map$Entry;

    .line 479
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 480
    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 482
    :cond_0
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->s()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->a(Lcom/google/common/collect/ImmutableSortedMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSortedMap;->b(Lcom/google/common/collect/ImmutableSortedMap;)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Iterators;->a([Ljava/lang/Object;II)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 486
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$EntrySetSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap$EntrySetSerializedForm;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method
