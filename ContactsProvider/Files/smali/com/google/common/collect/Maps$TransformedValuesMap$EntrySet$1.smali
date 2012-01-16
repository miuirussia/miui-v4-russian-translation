.class Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic dI:Ljava/util/Iterator;

.field final synthetic sZ:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;->sZ:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;

    iput-object p2, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;->dI:Ljava/util/Iterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;->dI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;->dI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 801
    new-instance v1, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;-><init>(Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;->dI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 813
    return-void
.end method
