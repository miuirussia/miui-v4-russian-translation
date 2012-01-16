.class Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "Maps.java"


# instance fields
.field final synthetic co:Ljava/util/Map$Entry;

.field final synthetic cp:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;->cp:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;

    iput-object p2, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;->co:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;->co:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;->cp:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;

    iget-object v0, v0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;->sZ:Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;

    iget-object v0, v0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;->cu:Lcom/google/common/collect/Maps$TransformedValuesMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$TransformedValuesMap;->function:Lcom/google/common/base/Function;

    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1$1;->co:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
