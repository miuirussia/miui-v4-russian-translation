.class public final Lcom/google/common/collect/ImmutableClassToInstanceMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "ImmutableClassToInstanceMap.java"

# interfaces
.implements Lcom/google/common/collect/ClassToInstanceMap;


# instance fields
.field private final od:Lcom/google/common/collect/ImmutableMap;


# virtual methods
.method protected E()Ljava/util/Map;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/common/collect/ImmutableClassToInstanceMap;->od:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableClassToInstanceMap;->E()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
