.class Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;
.super Lcom/google/common/collect/ForwardingCollection;
.source "ConstrainedMap.java"


# instance fields
.field final bb:Lcom/google/common/collect/MapConstraint;

.field final fZ:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/google/common/collect/MapConstraint;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->fZ:Ljava/util/Collection;

    .line 95
    iput-object p2, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->bb:Lcom/google/common/collect/MapConstraint;

    .line 96
    return-void
.end method


# virtual methods
.method protected c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->fZ:Ljava/util/Collection;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 125
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->fZ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;-><init>(Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->j(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
