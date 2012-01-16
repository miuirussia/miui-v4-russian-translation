.class Lcom/google/common/collect/ImmutableSortedMap$Values;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableSortedMap.java"


# instance fields
.field private final map:Lcom/google/common/collect/ImmutableSortedMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 540
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$Values;->map:Lcom/google/common/collect/ImmutableSortedMap;

    .line 541
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/ImmutableSortedMap$Values;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .parameter

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Values;->map:Lcom/google/common/collect/ImmutableSortedMap;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Values;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$Values;->s()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1

    .prologue
    .line 548
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Values$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$Values$1;-><init>(Lcom/google/common/collect/ImmutableSortedMap$Values;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Values;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 563
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$ValuesSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Values;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap$ValuesSerializedForm;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method
