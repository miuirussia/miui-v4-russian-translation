.class final Lcom/google/common/collect/CustomConcurrentHashMap$Builder;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# instance fields
.field cV:I

.field cW:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->cV:I

    .line 146
    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->cW:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 254
    if-nez p1, :cond_0

    .line 255
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "strategy"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    if-nez p2, :cond_1

    .line 258
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "computer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;Lcom/google/common/collect/CustomConcurrentHashMap$Builder;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method aR()I
    .locals 2

    .prologue
    .line 265
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->cV:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->cV:I

    goto :goto_0
.end method

.method aS()I
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->cW:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->cW:I

    goto :goto_0
.end method
