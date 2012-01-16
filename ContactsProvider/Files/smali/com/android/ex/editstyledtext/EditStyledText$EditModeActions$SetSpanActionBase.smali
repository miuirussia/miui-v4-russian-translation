.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
.source "EditStyledText.java"


# instance fields
.field final synthetic ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 3194
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    return-void
.end method


# virtual methods
.method protected D()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3197
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dk()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dk()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 3199
    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->c(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    .line 3200
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->a(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->a(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;II)V

    .line 3202
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->U()Z

    .line 3203
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->ea()Z

    .line 3217
    :goto_0
    return v0

    .line 3205
    :cond_1
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dk()I

    move-result v2

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->c(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 3206
    const-string v2, "EditModeActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- setspanactionbase"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dk()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->c(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dj()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3208
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    .line 3209
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->c(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    .line 3214
    :goto_1
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->ea()Z

    goto :goto_0

    .line 3211
    :cond_2
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    .line 3212
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3217
    goto/16 :goto_0
.end method

.method protected Q()Z
    .locals 2

    .prologue
    .line 3222
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dk()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dk()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3224
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->c(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    .line 3225
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->dZ()V

    .line 3226
    const/4 v0, 0x1

    .line 3228
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->D()Z

    move-result v0

    goto :goto_0
.end method

.method protected R()Z
    .locals 2

    .prologue
    .line 3233
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dk()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dk()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3235
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->c(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    .line 3236
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->U()Z

    .line 3237
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->ea()Z

    .line 3238
    const/4 v0, 0x1

    .line 3240
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->Q()Z

    move-result v0

    goto :goto_0
.end method

.method protected S()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3245
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3246
    const/4 v0, 0x1

    .line 3250
    :goto_0
    return v0

    .line 3248
    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->a(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;I)V

    goto :goto_0
.end method
