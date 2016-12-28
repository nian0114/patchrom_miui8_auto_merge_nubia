.class public final Lnubia/hardware/BreathingLightManager$BreathingLightRequest;
.super Ljava/lang/Object;
.source "BreathingLightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/hardware/BreathingLightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BreathingLightRequest"
.end annotation


# instance fields
.field mColor:I

.field mFrequency:I

.field mLight:I

.field mMode:I

.field mScene:I

.field final synthetic this$0:Lnubia/hardware/BreathingLightManager;


# direct methods
.method constructor <init>(Lnubia/hardware/BreathingLightManager;III)V
    .locals 0
    .param p2, "light"    # I
    .param p3, "mode"    # I
    .param p4, "scene"    # I

    .prologue
    iput-object p1, p0, Lnubia/hardware/BreathingLightManager$BreathingLightRequest;->this$0:Lnubia/hardware/BreathingLightManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lnubia/hardware/BreathingLightManager$BreathingLightRequest;->mLight:I

    iput p3, p0, Lnubia/hardware/BreathingLightManager$BreathingLightRequest;->mMode:I

    iput p4, p0, Lnubia/hardware/BreathingLightManager$BreathingLightRequest;->mScene:I

    return-void
.end method


# virtual methods
.method public sendRequest()V
    .locals 5

    .prologue
    iget v0, p0, Lnubia/hardware/BreathingLightManager$BreathingLightRequest;->mLight:I

    iget v1, p0, Lnubia/hardware/BreathingLightManager$BreathingLightRequest;->mMode:I

    iget v2, p0, Lnubia/hardware/BreathingLightManager$BreathingLightRequest;->mFrequency:I

    iget v3, p0, Lnubia/hardware/BreathingLightManager$BreathingLightRequest;->mScene:I

    iget v4, p0, Lnubia/hardware/BreathingLightManager$BreathingLightRequest;->mColor:I

    invoke-static {v0, v1, v2, v3, v4}, Lnubia/hardware/BreathingLightManager;->requestBreathingLight(IIIII)V

    return-void
.end method

.method public setLightColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lnubia/hardware/BreathingLightManager$BreathingLightRequest;->mColor:I

    return-void
.end method

.method public setLightFrequency(III)V
    .locals 2
    .param p1, "fadeTime"    # I
    .param p2, "fullOnTime"    # I
    .param p3, "fullOffTime"    # I

    .prologue
    const/4 v1, 0x7

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_0
    :goto_0
    if-gez p2, :cond_4

    const/4 p2, 0x0

    :cond_1
    :goto_1
    if-gez p3, :cond_5

    const/4 p3, 0x0

    :cond_2
    :goto_2
    shl-int/lit8 v0, p1, 0x8

    shl-int/lit8 v1, p2, 0x4

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    iput v0, p0, Lnubia/hardware/BreathingLightManager$BreathingLightRequest;->mFrequency:I

    return-void

    :cond_3
    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_4
    if-le p2, v1, :cond_1

    const/4 p2, 0x7

    goto :goto_1

    :cond_5
    if-le p3, v1, :cond_2

    const/4 p3, 0x7

    goto :goto_2
.end method
