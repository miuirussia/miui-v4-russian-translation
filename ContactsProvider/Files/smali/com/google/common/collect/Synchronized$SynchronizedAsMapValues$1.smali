.class Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;
.super Lcom/google/common/collect/ForwardingIterator;
.source "Synchronized.java"


# instance fields
.field final synthetic bm:Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1355
    iput-object p1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;->bm:Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;

    iput-object p2, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected W()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public ac()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;->bm:Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;

    iget-object v1, v1, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/Synchronized;->f(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1355
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;->W()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1355
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;->ac()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
