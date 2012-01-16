.class public abstract Lcom/google/common/collect/ForwardingMultimap;
.super Lcom/google/common/collect/ForwardingObject;
.source "ForwardingMultimap.java"

# interfaces
.implements Lcom/google/common/collect/Multimap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public bB()Ljava/util/Map;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->y()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->bB()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->y()Lcom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->y()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 117
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->y()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->y()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->y()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->size()I

    move-result v0

    return v0
.end method

.method public x()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->y()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->x()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected abstract y()Lcom/google/common/collect/Multimap;
.end method
