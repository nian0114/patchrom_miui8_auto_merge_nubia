.class interface abstract Lcom/android/settings_ex/msim/INBMsimPresenter;
.super Ljava/lang/Object;
.source "INBMsimPresenter.java"


# virtual methods
.method public abstract getCardState(I)I
.end method

.method public abstract getDataSlot()I
.end method

.method public abstract getPreferredNetworkModeFromDB(Landroid/content/Context;I)I
.end method

.method public abstract getPrimaryState()I
.end method

.method public abstract isCapabilitySwitching()Z
.end method

.method public abstract isDataChecked(I)Z
.end method

.method public abstract isNotSupportOperator(I)Z
.end method

.method public abstract isSupportLtePlusC()Z
.end method

.method public abstract onDataPreferenceChanged(IZ)V
.end method

.method public abstract onSubStateChanged(IZ)V
.end method

.method public abstract registerReceiverAndObserver()V
.end method

.method public abstract saveUserNetworkMode(II)V
.end method

.method public abstract setPreferredNetworkModeDB(Landroid/content/Context;II)V
.end method

.method public abstract unRegisterReceiverAndObserver()V
.end method

.method public abstract updateNetworkType(IILcn/nubia/commonui/preference/ListPreference;)V
.end method
