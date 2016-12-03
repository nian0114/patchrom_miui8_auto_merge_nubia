.class Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
.super Landroid/app/VoiceInteractor$PickOptionRequest;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PickTargetOptionRequest"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p2, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1276
    invoke-direct {p0, p1, p2, p3}, Landroid/app/VoiceInteractor$PickOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 1277
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 1281
    invoke-super {p0}, Landroid/app/VoiceInteractor$PickOptionRequest;->onCancel()V

    .line 1282
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    .line 1283
    .local v0, "ra":Lcom/android/internal/app/ResolverActivity;
    if-eqz v0, :cond_0

    .line 1284
    const/4 v1, 0x0

    # setter for: Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->access$802(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 1285
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1287
    :cond_0
    return-void
.end method

.method public onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "finished"    # Z
    .param p2, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 1292
    invoke-super {p0, p1, p2, p3}, Landroid/app/VoiceInteractor$PickOptionRequest;->onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 1293
    array-length v2, p2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1300
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    .line 1301
    .local v0, "ra":Lcom/android/internal/app/ResolverActivity;
    if-eqz v0, :cond_0

    .line 1302
    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mNubiaResolverController:Lcom/android/internal/app/NubiaResolverController;

    aget-object v3, p2, v4

    invoke-virtual {v3}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/NubiaResolverController;->getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v1

    .line 1304
    .local v1, "ti":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1305
    const/4 v2, 0x0

    # setter for: Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
    invoke-static {v0, v2}, Lcom/android/internal/app/ResolverActivity;->access$802(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 1306
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0
.end method
