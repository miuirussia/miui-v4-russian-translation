.class public final Lcom/google/common/collect/ImmutableBiMap$Builder;
.super Lcom/google/common/collect/ImmutableMap$Builder;
.source "ImmutableBiMap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic dW()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->ex()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public ex()Lcom/google/common/collect/ImmutableBiMap;
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap$Builder;->dW()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->cq()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap$Builder;->dW()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    goto :goto_0
.end method

.method public bridge synthetic k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->l(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMap$Builder;->k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 149
    return-object p0
.end method
