.class Lcom/google/common/collect/AbstractBiMap$ValueSet$1;
.super Ljava/lang/Object;
.source "AbstractBiMap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field cx:Ljava/lang/Object;

.field final synthetic cy:Lcom/google/common/collect/AbstractBiMap$ValueSet;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractBiMap$ValueSet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->cy:Lcom/google/common/collect/AbstractBiMap$ValueSet;

    iput-object p2, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->cx:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 244
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->cy:Lcom/google/common/collect/AbstractBiMap$ValueSet;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->bW:Lcom/google/common/collect/AbstractBiMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->cx:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractBiMap;->b(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)V

    .line 245
    return-void
.end method
