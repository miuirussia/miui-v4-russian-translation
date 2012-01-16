.class public final Lcom/google/common/collect/ImmutableList$Builder;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableList.java"


# instance fields
.field private final kW:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 409
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->kW:Ljava/util/ArrayList;

    .line 415
    return-void
.end method


# virtual methods
.method public X(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 2
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->kW:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    return-object p0
.end method

.method public bridge synthetic c([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->k([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->X(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs k([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 3
    .parameter

    .prologue
    .line 455
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->kW:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableList$Builder;->kW:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 457
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->c([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 458
    return-object p0
.end method
