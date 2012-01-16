.class final Lcom/google/common/collect/Multisets$1;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "Multisets.java"


# instance fields
.field final synthetic gI:Ljava/lang/Object;

.field final synthetic gJ:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/common/collect/Multisets$1;->gI:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/Multisets$1;->gJ:I

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public X()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/common/collect/Multisets$1;->gI:Ljava/lang/Object;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/google/common/collect/Multisets$1;->gJ:I

    return v0
.end method
