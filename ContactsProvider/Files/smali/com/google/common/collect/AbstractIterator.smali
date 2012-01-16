.class public abstract Lcom/google/common/collect/AbstractIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "AbstractIterator.java"


# instance fields
.field private lt:Ljava/lang/Object;

.field private vy:Lcom/google/common/collect/AbstractIterator$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 62
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->mm:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->vy:Lcom/google/common/collect/AbstractIterator$State;

    .line 64
    return-void
.end method

.method private dY()Z
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->mo:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->vy:Lcom/google/common/collect/AbstractIterator$State;

    .line 136
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->Z()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->lt:Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->vy:Lcom/google/common/collect/AbstractIterator$State;

    sget-object v1, Lcom/google/common/collect/AbstractIterator$State;->mn:Lcom/google/common/collect/AbstractIterator$State;

    if-eq v0, v1, :cond_0

    .line 138
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->ml:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->vy:Lcom/google/common/collect/AbstractIterator$State;

    .line 139
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract Z()Ljava/lang/Object;
.end method

.method protected final dX()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->mn:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->vy:Lcom/google/common/collect/AbstractIterator$State;

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->vy:Lcom/google/common/collect/AbstractIterator$State;

    sget-object v3, Lcom/google/common/collect/AbstractIterator$State;->mo:Lcom/google/common/collect/AbstractIterator$State;

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 124
    sget-object v0, Lcom/google/common/collect/AbstractIterator$1;->sb:[I

    iget-object v3, p0, Lcom/google/common/collect/AbstractIterator;->vy:Lcom/google/common/collect/AbstractIterator$State;

    invoke-virtual {v3}, Lcom/google/common/collect/AbstractIterator$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 131
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;->dY()Z

    move-result v2

    :goto_1
    :pswitch_0
    return v2

    :cond_0
    move v0, v2

    .line 123
    goto :goto_0

    :pswitch_1
    move v2, v1

    .line 128
    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 148
    :cond_0
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->mm:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->vy:Lcom/google/common/collect/AbstractIterator$State;

    .line 149
    iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->lt:Ljava/lang/Object;

    return-object v0
.end method
