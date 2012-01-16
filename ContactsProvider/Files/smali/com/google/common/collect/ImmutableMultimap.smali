.class public abstract Lcom/google/common/collect/ImmutableMultimap;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"

# interfaces
.implements Lcom/google/common/collect/Multimap;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final transient cv:Lcom/google/common/collect/ImmutableMap;

.field private transient hw:Lcom/google/common/collect/ImmutableCollection;

.field final transient size:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 248
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap;->cv:Lcom/google/common/collect/ImmutableMap;

    .line 250
    iput p2, p0, Lcom/google/common/collect/ImmutableMultimap;->size:I

    .line 251
    return-void
.end method


# virtual methods
.method public bridge synthetic bB()Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap;->cy()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->cv:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 331
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cy()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->cv:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public cz()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->hw:Lcom/google/common/collect/ImmutableCollection;

    .line 400
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMultimap$EntryCollection;-><init>(Lcom/google/common/collect/ImmutableMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->hw:Lcom/google/common/collect/ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultimap;->v(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 356
    instance-of v0, p1, Lcom/google/common/collect/Multimap;

    if-eqz v0, :cond_0

    .line 357
    check-cast p1, Lcom/google/common/collect/Multimap;

    .line 358
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->cv:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->bB()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->cv:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/google/common/collect/ImmutableMultimap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->cv:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract v(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
.end method

.method public bridge synthetic x()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap;->cz()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
