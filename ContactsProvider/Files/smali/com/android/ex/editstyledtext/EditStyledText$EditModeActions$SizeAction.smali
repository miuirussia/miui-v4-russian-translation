.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;
.source "EditStyledText.java"


# instance fields
.field final synthetic ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 3327
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    return-void
.end method


# virtual methods
.method protected S()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3330
    invoke-super {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3334
    :goto_0
    return v1

    .line 3333
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->d(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->h(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    goto :goto_0
.end method

.method protected T()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3339
    invoke-super {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3351
    :goto_0
    return v4

    .line 3342
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dm()I

    move-result v0

    .line 3343
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dl()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->b(IZ)V

    .line 3344
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dj()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3345
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->c(IZ)V

    .line 3346
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    goto :goto_0

    .line 3348
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->U()Z

    .line 3349
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->d(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->h(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    goto :goto_0
.end method
