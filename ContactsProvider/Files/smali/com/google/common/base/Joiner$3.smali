.class final Lcom/google/common/base/Joiner$3;
.super Ljava/util/AbstractList;
.source "Joiner.java"


# instance fields
.field final synthetic np:[Ljava/lang/Object;

.field final synthetic nq:Ljava/lang/Object;

.field final synthetic nr:Ljava/lang/Object;


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 331
    packed-switch p1, :pswitch_data_0

    .line 337
    iget-object v0, p0, Lcom/google/common/base/Joiner$3;->np:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 333
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/base/Joiner$3;->nq:Ljava/lang/Object;

    goto :goto_0

    .line 335
    :pswitch_1
    iget-object v0, p0, Lcom/google/common/base/Joiner$3;->nr:Ljava/lang/Object;

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public size()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/common/base/Joiner$3;->np:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
