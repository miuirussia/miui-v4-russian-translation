.class public Lcom/android/providers/contacts/AccountWithDataSet;
.super Ljava/lang/Object;
.source "AccountWithDataSet.java"


# instance fields
.field private final mAccountType:Ljava/lang/String;

.field private final pP:Ljava/lang/String;

.field private final pQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/providers/contacts/AccountWithDataSet;->pP:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountType:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/android/providers/contacts/AccountWithDataSet;->pQ:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public eW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/providers/contacts/AccountWithDataSet;->pP:Ljava/lang/String;

    return-object v0
.end method

.method public eX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public eY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/providers/contacts/AccountWithDataSet;->pQ:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 49
    instance-of v1, p1, Lcom/android/providers/contacts/AccountWithDataSet;

    if-eqz v1, :cond_0

    .line 50
    check-cast p1, Lcom/android/providers/contacts/AccountWithDataSet;

    .line 51
    iget-object v1, p0, Lcom/android/providers/contacts/AccountWithDataSet;->pP:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/providers/contacts/AccountWithDataSet;->eW()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/providers/contacts/AccountWithDataSet;->eX()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/contacts/AccountWithDataSet;->pQ:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/providers/contacts/AccountWithDataSet;->eY()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 55
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/android/providers/contacts/AccountWithDataSet;->pP:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/contacts/AccountWithDataSet;->pP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 61
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/providers/contacts/AccountWithDataSet;->pQ:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/providers/contacts/AccountWithDataSet;->pQ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 63
    return v0

    :cond_1
    move v0, v1

    .line 60
    goto :goto_0

    :cond_2
    move v0, v1

    .line 61
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountWithDataSet {name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/AccountWithDataSet;->pP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/AccountWithDataSet;->pQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
