.class Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/MapMaker$ValueReference;


# instance fields
.field final dk:Lcom/google/common/collect/MapMaker$ReferenceEntry;

.field final dl:Lcom/google/common/collect/MapMaker$ReferenceEntry;

.field final synthetic dm:Lcom/google/common/collect/MapMaker$StrategyImpl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ReferenceEntry;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->dm:Lcom/google/common/collect/MapMaker$StrategyImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-object p2, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->dk:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .line 645
    iput-object p3, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->dl:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .line 646
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 3
    .parameter

    .prologue
    .line 662
    new-instance v0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;

    iget-object v1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->dm:Lcom/google/common/collect/MapMaker$StrategyImpl;

    iget-object v2, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->dk:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;-><init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ReferenceEntry;)V

    return-object v0
.end method

.method aZ()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->dm:Lcom/google/common/collect/MapMaker$StrategyImpl;

    iget-object v0, v0, Lcom/google/common/collect/MapMaker$StrategyImpl;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    iget-object v1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->dl:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Internals;->j(Ljava/lang/Object;)Z

    .line 687
    return-void
.end method

.method public as()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 666
    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->dm:Lcom/google/common/collect/MapMaker$StrategyImpl;

    iget-object v1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->dk:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->d(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 674
    return-object v0

    .line 673
    :catchall_0
    move-exception v0

    .line 674
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->aZ()V

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 649
    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->dk:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->f()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/MapMaker$ValueReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 656
    return-object v0

    .line 655
    :catchall_0
    move-exception v0

    .line 656
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->aZ()V

    throw v0
.end method
