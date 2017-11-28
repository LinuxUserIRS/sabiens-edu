import { defineSupportCode } from 'cucumber';
import { browser, $, element, ElementArrayFinder, by } from 'protractor';
let chai = require('chai').use(require('chai-as-promised'));
let expect = chai.expect;


defineSupportCode(function ({ Given, When, Then }) {
    Given(/^Estou na página Gerenciamento de Entidades$/, async () => {
        await browser.get("http://localhost:4200/managing");
        await expect(browser.getTitle()).to.eventually.equal('Gerenciamento de Entidades');
    })

    When(/^Atribuo a tarefa "(.*?)" à monitora "(.*?)" para a data "(.*?)"$/, async (task, monitor, date) => {
        await element(by.buttonText('Nova Tarefa')).click();
        await $("input[name='taskBox']").sendKeys(<string> task);
        await $("input[name='monitorBox']").sendKeys(<string> monitor);
        await $("input[name='dateBox']").sendKeys(<string> date);
        await element(by.buttonText('Atribuir')).click();
    });

    Then(/^É mostrada uma mensagem de confirmação$/, async () => {
        await expect(element(by.name('confirmationMessage').value=='Task confirmada'));
    });
})