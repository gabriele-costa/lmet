/*
 * generated by Xtext 2.11.0
 */
package it.unige.csec.ide

import com.google.inject.Guice
import it.unige.csec.LmetRuntimeModule
import it.unige.csec.LmetStandaloneSetup
import org.eclipse.xtext.util.Modules2

/**
 * Initialization support for running Xtext languages as language servers.
 */
class LmetIdeSetup extends LmetStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new LmetRuntimeModule, new LmetIdeModule))
	}
	
}