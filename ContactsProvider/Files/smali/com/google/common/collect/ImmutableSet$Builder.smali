.class public Lcom/google/common/collect/ImmutableSet$Builder;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableSet.java"


# instance fields
.field final kW:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 465
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->kW:Ljava/util/ArrayList;

    .line 471
    return-void
.end method


# virtual methods
.method public varargs b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 3
    .parameter

    .prologue
    .line 497
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->kW:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$Builder;->kW:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 499
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->c([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 500
    return-object p0
.end method

.method public bridge synthetic c([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 2
    .parameter

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->kW:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    return-object p0
.end method

.method public bridge synthetic h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method
