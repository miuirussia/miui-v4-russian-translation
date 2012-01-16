.class public Lcom/android/providers/contacts/NameSplitter$Name;
.super Ljava/lang/Object;
.source "NameSplitter.java"


# instance fields
.field public aA:Ljava/lang/String;

.field public aB:Ljava/lang/String;

.field public aC:I

.field public au:Ljava/lang/String;

.field public av:Ljava/lang/String;

.field public aw:Ljava/lang/String;

.field public ax:Ljava/lang/String;

.field public ay:I

.field public az:Ljava/lang/String;

.field public prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method private a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    if-eqz p3, :cond_0

    .line 182
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->au:Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->av:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aw:Ljava/lang/String;

    return-object v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->ax:Ljava/lang/String;

    return-object v0
.end method

.method public O()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->ay:I

    return v0
.end method

.method public b(Landroid/content/ContentValues;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 150
    const-string v0, "data4"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 151
    const-string v0, "data2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->au:Ljava/lang/String;

    .line 152
    const-string v0, "data5"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->av:Ljava/lang/String;

    .line 153
    const-string v0, "data3"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aw:Ljava/lang/String;

    .line 154
    const-string v0, "data6"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->ax:Ljava/lang/String;

    .line 156
    const-string v0, "data10"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 157
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->ay:I

    .line 159
    const-string v0, "data9"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->az:Ljava/lang/String;

    .line 160
    const-string v0, "data8"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aA:Ljava/lang/String;

    .line 161
    const-string v0, "data7"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aB:Ljava/lang/String;

    .line 163
    const-string v0, "data11"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 164
    if-nez v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aC:I

    .line 165
    return-void

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method public c(Landroid/content/ContentValues;)V
    .locals 2
    .parameter

    .prologue
    .line 168
    const-string v0, "data4"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/NameSplitter$Name;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "data2"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->au:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/NameSplitter$Name;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "data5"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->av:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/NameSplitter$Name;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "data3"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aw:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/NameSplitter$Name;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "data6"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->ax:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/NameSplitter$Name;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "data10"

    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->ay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v0, "data9"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->az:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/NameSplitter$Name;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "data8"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aA:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/NameSplitter$Name;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "data7"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aB:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/NameSplitter$Name;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "data11"

    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aC:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->au:Ljava/lang/String;

    .line 189
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->av:Ljava/lang/String;

    .line 190
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aw:Ljava/lang/String;

    .line 191
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->ax:Ljava/lang/String;

    .line 192
    iput v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->ay:I

    .line 193
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->az:Ljava/lang/String;

    .line 194
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aA:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aB:Ljava/lang/String;

    .line 196
    iput v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aC:I

    .line 197
    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->au:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->av:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->ax:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->az:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[prefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->au:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " middle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->av:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " family: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " suffix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ph/given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ph/middle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->aA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ph/family: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->az:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
